#!/usr/bin/env Rscript

# this script converts a Connecticut model to the Hartford version
# and sets it up ready for parameter estimation

library(tidyverse)
library(CoRC)

# read experimental data
datafile = "CT-Hartford-COVID19.tsv"
data_experimental <-  read_tsv(datafile)

# serial number of the day of this iteration, in the last row of data file
today <- as.double( data_experimental$'#day'[NROW(data_experimental)])
                                             
# which models to process
modelnos <- c(4,6,7)

pathto <- getwd()

# deal with each model
for (modelno in modelnos)
{
  #get model
  modelfname <- sprintf("../SIDARTHE-CT_Model%d.cps",modelno)
  newmodelfname <- sprintf("SIDARTHE-CT-Hartford_Model%d-%d.cps",modelno,today)
  loadModel(modelfname)
  # change the name
  mname <- sprintf("SIDARTHE Hartford Model %d",modelno)
  setModelName(mname)
  # change the total population
  setGlobalQuantities("Population", initial_value = 894014)
  # add species UCH
  newSpecies("UCH", type = "reactions", initial_concentration = 0)
  # set I and A back to zero
  setSpecies("I", initial_concentration = 0)
  setSpecies("A", initial_concentration = 0)
  # update the conservation relation
  cons <- paste0(getSpecies("S")$initial_expression,"-{[UCH]_0}")
  setSpecies("S", initial_expression = cons)
  # add rate constant for progression to UCH
  newGlobalQuantity("mu_UCH", type = "fixed", initial_value = getValue(quantity_strict("mu", reference="InitialValue")) )
  # add new quantity for total hospitalized
  th1 = species_strict("T",reference = "Concentration")
  th2 = species_strict("UCH", reference = "Concentration")
  th =  paste(th1,th2,sep="+") 
  newGlobalQuantity("Total_Hospitalized", type = "assignment", expression = th )
  # add global quantity for zero day
  newGlobalQuantity("ZeroDay", type = "fixed", initial_value = 0.1 )
  muuchval <- quantity_strict("mu_UCH", reference = "Value")
  # add reactions for UCH  
  newReaction("A -> UCH", name = "critical_A_UCH", fun = "Mass action (irreversible)",
              mappings = list(k1 = "mu_UCH" ) )
  newReaction("R -> UCH", name = "critical_R_UCH", fun = "Mass action (irreversible)",
              mappings = list(k1 = "mu_UCH" ) )
  newReaction("UCH -> E", name = "death_UCH", fun = "Mass action (irreversible)",
              mappings = list(k1 = "tau" ) )
  newReaction("UCH -> H", name = "healing_UCH", fun = "Mass action (irreversible)",
              mappings = list(k1 = "sigma" ) )

  # add new event for introduction of infected
  newEvent("Seeding", trigger_expression = "{Time}>{Values[ZeroDay]}", assignment_target = c("I"), assignment_expression = c("1"))
  
  # setup parameter estimation
  clearParameterEstimationParameters()
  clearExperiments()

  data_pe <- data_experimental %>% rename("time" = "#day") %>% set_tidy_names(TRUE)
  
  # define the experiment with the Hartford data set
  #fit_experiments <- defineExperiments(
  #  experiment_type = "time_course",
  #  #data = data_pe
  #  type = c("time", "dependent", "dependent", "dependent", "ignore", "dependent", "ignore"),
  #  mapping = c( "{Time}", "{Values[Diagnosed Cumulative infected]}", "{Values[Total_Hospitalized]}", "{[UCH]}", NA, "{[E]}", NA),
  #  weight_method = "mean_square",
  #  filename = datafile
  #)
  
  # define the parameters to fit
  p1 <- defineParameterEstimationParameter(quantity_strict("ZeroDay", "InitialValue"), start_value = 1, lower_bound = 0, upper_bound = 15)
  p2 <-defineParameterEstimationParameter(quantity_strict("mu_UCH", "InitialValue"), start_value = getGlobalQuantities("mu_UCH")$initial_value, lower_bound = 1e-6, upper_bound = getGlobalQuantities("mu")$initial_value)
  val = getGlobalQuantities("day8x")$initial_value
  p3 <- defineParameterEstimationParameter(quantity_strict("day8x", "InitialValue"), start_value = val, lower_bound = val*0.7, upper_bound = 1)
  val = getGlobalQuantities("day15")$initial_value
  #up = quantity_strict("day8x",  reference = "Value")
  up = getGlobalQuantities("day8x")$initial_value
  p4 <- defineParameterEstimationParameter(quantity_strict("day15x", "InitialValue"), start_value = val, lower_bound = val*0.8, upper_bound = up)
  val = getGlobalQuantities("tau")$initial_value
  p5 <- defineParameterEstimationParameter(quantity_strict("tau", "InitialValue"), start_value = val, lower_bound = val*0.7, upper_bound = val*1.3)
  val = getGlobalQuantities("theta")$initial_value
  p6 <- defineParameterEstimationParameter(quantity_strict("theta", "InitialValue"), start_value = val, lower_bound = val*0.7, upper_bound = val*1.3)

  setPE(parameters = list(p1,p2,p3,p4,p5,p6)
)
  saveModel(newmodelfname)
  unloadModel()
}
