# COVID19
Code and models to analyze COVID-19 data for Connecticut

This repository contains code to retreive relevant data for Connecticut and create 
forecasts using the data with models of various kinds.

## Data sources
1. The [COVID Tracking Project](https://covidtracking.com), which contains data on tests. The scripts use their API directly.
2. The [Census](https://www.census.gov/data/datasets.html) for demographic data stratified by age, sex, and counties.

(At earlier stages we used the Johns Hopkins University [CSSE COVID-19 data set](https://github.com/CSSEGISandData/COVID-19.git) but this keeps changing format and the same data is included in source 1 above so we no longer use it)

## Models
SIR-type models are encoded with the [COPASI simulator](http://copasi.org) and can be run both as ODE models or as stochastic models using Gillespie's stochastic simulation algorithm. Provided are also [SBML](http://sbml.org) translations of those models (extension .xml) that can be loaded into other compatible simulators.

1. The SIDARTHE model of the Italian epidemic. This was described in a [preprint](https://arxiv.org/abs/2003.09861) by Giordano et al. (with the COVID19 IRCCS San Matteo Pavia Task Force). This model allows distinction between detected and undetected cases and is calibrated for the Italian epidemic. This was validated and the COPASI version produces the same results as the original. The model is included in two versions, one with relative population (as in the original) and another with the total population so that it can be simulated stochastically.

2. A basic SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). 



## Licenses
All code is released under an MIT license. Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
