# COVID19
Code and models to analyze COVID-19 data for Connecticut

This repository contains code to retreive relevant data for Connecticut and create 
forecasts using the data with models of various kinds.

## Data sources
1. The [COVID Tracking Project](https://covidtracking.com), which contains data on tests. The scripts use their API directly.
2. The [Census](https://www.census.gov/data/datasets.html) for demographic data stratified by age, sex, and counties.

(At earlier stages we used the Johns Hopkins University [CSSE COVID-19 data set](https://github.com/CSSEGISandData/COVID-19.git) but this keeps changing format and the same data is included in source 1 above so we no longer use it)

## Models
SIR-type models are encoded with the [COPASI simulator](http://copasi.org) and can be run both as ODE models or as stochastic models using Gillespie's stochastic simulation algorithm. Provided are also [SBML](http://sbml.org) translations of those models (extension .xml) that can be loaded into other compatible simulators. More details in the README file in that folder.

## Licenses
All code is released under an MIT license. Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
