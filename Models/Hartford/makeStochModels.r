#!/usr/bin/env Rscript

library(tidyverse)
library(parallel)
library(CoRC)

# read experimental data
datafile = "CT-Hartford-COVID19.tsv"
data_experimental <-  read_tsv(datafile)

# serial number of the day of this iteration, in the last row of data file
today <- as.double( data_experimental$'#day'[NROW(data_experimental)])

# which models to process
modelnos <- c(3,4,5)

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
 # update the parameters that have changed
 setGlobalQuantities("alpha", initial_value = getGlobalQuantities("alpha")$value)
 setGlobalQuantities("theta", initial_value = getGlobalQuantities("theta")$value)
 # remove the explicit ODEs as these don't work with stochastic simulation
 deleteGlobalQuantity("Diagnosed Cumulative infected")
 deleteGlobalQuantity("Recovered")
  # remove the events that change infection and testing parameters
 deleteEvent("Day 08")
 deleteEvent("Day 11")
 deleteEvent("Day 15")
 deleteEvent("Day 19")
 deleteEvent("Day 29")
 deleteEvent("Seeding")
 deleteEvent("T no new case")
 deleteEvent("T peak detection")
 # set the time course parameters for the stochastic simulation
 setTimeCourseSettings(duration = 21, dt = 1, executable = TRUE, save_result_in_memory = TRUE,  method = list(method = "directMethod", use_random_seed = T) )

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
 plotdata <-
   timeseries %>%
   bind_rows() %>%
   select(Time,UCH) %>%
   group_by(Time) %>%
   # calculate mean and sd
   summarise_all(list(mean = mean, sd = sd))
 plotdata = rename(plotdata, "#Time" = Time)
 datafname <-  sprintf("TStoch-%d-%d.tsv",modelno,today)
 write.table(plotdata, file = datafname, row.names = FALSE, sep = "\t")
 
}