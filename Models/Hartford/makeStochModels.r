#!/usr/bin/env Rscript

library(tidyverse)
library(parallel)
library(CoRC)
library(boot)
#library(gganimate)
#library(gifski)

# how many days are simulated
prediction_days <- 21

# function to bootrap mean values
fnmean <- function(d, i){
  d2 <- d[i,]
  return(mean(d2$UCH))
}

# read experimental data
datafile = "CT-Hartford-COVID19.tsv"
data_experimental <-  read_tsv(datafile)

# serial number of the day of this iteration, in the last row of data file
today <- as.double( data_experimental$'#day'[NROW(data_experimental)])

# which models to process
modelnos <- c(4,6,7)

for (modelno in modelnos)
{
 modelfname <- sprintf("SIDARTHE-CT-Hartford_Model%d-%d.cps",modelno,today)
 newmodelfname <- sprintf("SIDARTHE-CT-Hartford_Model%d_stoch-%d.cps",modelno,today)
 # deal with each model

 loadModel(modelfname)

 # change the name
 mname <- sprintf("SIDARTHE Hartford Model %d stochastic",modelno)
 setModelName(mname)
 # let's run the model until the last day with data
 runTimeCourse(duration = today, intervals = 1, update_model = TRUE, executable = TRUE, method = "deterministic")
 # set the initial time back to zero, as previous run set it to today
 setInitialTime(0)
 # remember original alpha and beta initial values
 alpha0 = getGlobalQuantities(key="alpha")$initial_value
 beta0 = getGlobalQuantities(key="beta")$initial_value
 gamma0 = getGlobalQuantities(key="gamma")$initial_value
 delta0 = getGlobalQuantities(key="delta")$initial_value
 # update the parameters that have changed
 setGlobalQuantities("alpha", initial_value = getGlobalQuantities("alpha")$value)
 setGlobalQuantities("theta", initial_value = getGlobalQuantities("theta")$value)
 # relax social distancing by 50% on May 20
 setGlobalQuantities("f_stage4", initial_value = 0.5)
 # reset the event as May 20 is no longer day 73 
 trg <- sprintf("{Time} > %d",73-today)
 ass1 <- sprintf("{Values[alpha]}+(%f-{Values[alpha]})*{Values[f_stage4]}",alpha0)
 ass2 <- sprintf("{Values[beta]}+(%f-{Values[beta]})*{Values[f_stage4]}",beta0)
 ass3 <- sprintf("{Values[gamma]}+(%f-{Values[gamma]})*{Values[f_stage4]}",alpha0)
 ass4 <- sprintf("{Values[delta]}+(%f-{Values[delta]})*{Values[f_stage4]}",beta0)
 ev1 <- getEvents(key="Day 73 ReOpenStage 4")
 ev1$trigger_expression = trg
 if( length(unlist(ev1$assignment_target))>2 ) {
   ev1$assignment_expression = list(c(ass1,ass2,ass3,ass4)) 
 } else {
   ev1$assignment_expression = list(c(ass1,ass2)) 
 }   
 setEvents(key = "Day 73 ReOpenStage 4", data = ev1 ) 
 # remove the explicit ODEs as these don't work with stochastic simulation
 deleteGlobalQuantity("Diagnosed Cumulative infected")
 deleteGlobalQuantity("Recovered")
  # remove the events that change infection and testing parameters
 deleteEvent("Day 08")
 deleteEvent("Day 11")
 deleteEvent("Day 15")
 deleteEvent("Day 21")
 deleteEvent("Day 32")
 deleteEvent("Day 60")
 deleteEvent("Seeding")
 deleteEvent("T no new case")
 deleteEvent("T peak detection")
 # set the time course parameters for the stochastic simulation
 setTimeCourseSettings(duration = prediction_days, dt = 1, executable = TRUE, save_result_in_memory = TRUE,  method = list(method = "directMethod", use_random_seed = T) )

 # save the model
 saveModel(newmodelfname)
 unloadModel()
 
 # run stochastic simulations in parallel
 cl <- makeCluster(detectCores())
 clusterExport(cl,"newmodelfname")
 clusterCall(cl = cl, function(){library(CoRC); loadModel(newmodelfname); NULL } )
 rtc <- function(x) return(runTimeCourse(method = list(random_seed = x))$result)
 timeseries <- parLapplyLB(cl = cl, 1:1000,  rtc)
 stopCluster(cl)

 # select just the data we need 
 data1 <-
   timeseries %>%
   bind_rows() %>%
   select(Time,UCH) # %>%
 # function for get bootstrap percentile confidence intervals
 btl <- function(x) {  
     bootm <-boot(x, fnmean, R=500)
     bp <- boot.ci(boot.out = bootm, type = c("perc"))
     return(bp) 
     }
 # function to filter out all values for a single time point
 tp <- function(i){return(filter(data1, Time==i))}
 # define a list of all time points
 times <- as.list(seq (1,prediction_days,1)) 
 # bootstrap mean values and get list of confidence intervals for each time point
 cis <- lapply(lapply(times, tp),btl)
 # shape the data format to contain
 data2 <- data1 %>% 
   group_by(Time) %>%
   summarise_all(list(mean=mean,sd=sd,min=min,max=max))
  # put lower ci bounds in vector
 data2$ci_lb <- append(c(data2$mean[1]),unlist(lapply(times,function(i){cis[[i]]$percent[4]})))
 # put upper ci bounds in vector
 data2$ci_ub <- append(c(data2$mean[1]),unlist(lapply(times,function(i){cis[[i]]$percent[5]})))
 # offset the values of time
 data2$Time <- data2$Time + today
 data2 = rename(data2, "#Time" = Time)
 datafname <-  sprintf("TStoch-%d-%d.tsv",modelno,today)
 write.table(data2, file = datafname, row.names = FALSE, sep = "\t")
 #plotT <- ggplot(plotdata, aes(UCH)) + geom_histogram(binwidth=1, color="black", fill="cyan", aes(y=..density..)) + 
 #          geom_density(size=2, color=rgb(0,0.5,0.5,0.8)) + theme_classic(base_size=14) +
 #         labs(title = 'Distribution: t={frame_time}', x = 'UCH', y = 'density')
 #anim_save(plotT, nframes = 21, renderer = gifski_renderer("test.gif"))
  
 #ggsave("Harford-distri-t20.gif",plot=plotT, path="/home/mendes/UCHC/COVID19/Report")
}
