# COVID19
Code and models to analyze COVID-19 data for Connecticut

This repository contains code to retreive relevant data for Connecticut and create 
forecasts using the data with models of various kinds.

## Data sources
1. The [COVID Tracking Project](https://covidtracking.com), which contains data on tests. The scripts use their API directly.
2. The [Census](https://www.census.gov/data/datasets.html) for demographic data stratified by age, sex, and counties.

(At earlier stages we used the Johns Hopkins University [CSSE COVID-19 data set](https://github.com/CSSEGISandData/COVID-19.git) but this keeps changing format and the same data is included in source 1 above so we no longer use it)

## Models
1. A basic SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). 
This model is implemented in [COPASI](http://copasi.org) and run as a stochastic model with Gillespie's direct method ssa.

## Licenses
All code is released under an MIT license. Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
