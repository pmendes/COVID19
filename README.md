# COVID19
Code and models to analyze COVID-19 data for Connecticut

This repository contains code to retreive relevant data for Connecticut and create 
forecasts using the data with models of various kinds.

## Data sources
1. The Johns Hopkins University [CSSE COVID-19 data set](https://github.com/CSSEGISandData/COVID-19.git). 
The scripts access a local clone of their GitHub repository, in a folder called COVID-19
2.  The [COVID Tracking Project](https://covidtracking.com), which contains data on tests. The scripts use their API directly.    

## Models
1. An SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). 
This model is implemented in [COPASI](http://copasi.org) and run as a stochastic model with Gillespie's direct method ssa.

## Licenses
All code is released under an MIT license. Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
