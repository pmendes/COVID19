# COVID19 Models
This folder contains epidemic SIR-type models which are encoded for the [COPASI simulator](http://copasi.org) (extension .cps) where they can be run both as ODE models or as stochastic models using Gillespie's stochastic simulation algorithm. Provided are also [SBML](http://sbml.org) translations of those models (extension .xml) that can be loaded into other compatible simulators.

1. **SIDARTHE.cps** The SIDARTHE model of the Italian epidemic. This was described in a [preprint](https://arxiv.org/abs/2003.09861) by Giordano et al. (with the COVID19 IRCCS San Matteo Pavia Task Force). This model allows distinction between detected and undetected cases and is calibrated for the Italian epidemic. I have now managed to replicate the results of this model completely.

2. **SIDARTHE\_pop.cps** As the previous model but now scaled to the total population rather than using relative values as in the original. This means that the sum of all variables is now 60 million rather than 1, and parameters alpha, beta, gamma and delta have been rescaled (divided by total population). These changes are also reflected in the units of quantity, where the original model has units of 1 (adimensional), and this one has units of # (individuals). The model otherwise behaves as the original. This change is necessary to run the model with the Gillespie algorithm. As an example of stochastic simulation with this model see file **SIDARTHE_stochastic_100_100_IDART.png** which overlays 100 samples of the model behavior for IDART (the current total infected number) and shows the expected time window for a peak in cases.

3. **COVID-19-SEIR.cps** A basic SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). This model was initially intended to be the skeleton for a CT model, but has now been dropped in favor to SIDARTHE.


## Licenses
Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
