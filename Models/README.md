# COVID19 Models
This folder contains epidemic SIR-type models which are encoded for the [COPASI simulator](http://copasi.org) (extension .cps) where they can be run both as ODE models or as stochastic models using Gillespie's stochastic simulation algorithm. Provided are also [SBML](http://sbml.org) translations of those models (extension .xml) that can be loaded into other compatible simulators.

1. **COVID-19-SEIR-CT.cps** A basic SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). (The title CT in the filename reflects the aim to parameterize it to Connecticut data, but the current version has the vanilla parameters, so it is not specific to CT).

2. **SIDARTHE.cps** The SIDARTHE model of the Italian epidemic. This was described in a [preprint](https://arxiv.org/abs/2003.09861) by Giordano et al. (with the COVID19 IRCCS San Matteo Pavia Task Force). This model allows distinction between detected and undetected cases and is calibrated for the Italian epidemic. I have now managed to replicate the results of this model completely.

## Licenses
Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.