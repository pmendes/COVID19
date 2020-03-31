# COVID19 Models
This folder contains epidemic SIR-type models which are encoded for the [COPASI simulator](http://copasi.org) (extension .cps) where they can be run both as ODE models or as stochastic models using Gillespie's stochastic simulation algorithm. Provided are also [SBML](http://sbml.org) translations of those models (extension .xml) that can be loaded into other compatible simulators.

## Main model

Currently the main model being used is the SIDARTHE model of the Italian epidemic. This was described in a [preprint](https://arxiv.org/abs/2003.09861) by Giordano et al. (with the COVID19 IRCCS San Matteo Pavia Task Force). The model allows distinction between detected and undetected cases and was calibrated for the Italian epidemic. Several files below reflect different implementations:

1. **SIDARTHE.cps** This is the base COPASI translation of the model.  I have now managed to replicate the results of the paper using this model.

2. **SIDARTHE\_pop.cps** As the previous model but now scaled to the total population rather than using relative values as in the original. This means that the sum of all variables is now 60 million rather than 1, and parameters alpha, beta, gamma and delta have been rescaled (divided by total population). These changes are also reflected in the units of quantity, where the original model has units of 1 (adimensional), and this one has units of # (individuals). The model otherwise behaves as the original. This change is necessary to run the model with the Gillespie algorithm. As an example of stochastic simulation with this model see file **SIDARTHE_stochastic_100_100_IDART.png** which overlays 100 samples of the model behavior for IDART (the current total infected number) and shows the expected time window for a peak in cases.

## Other models

I am not currently using these models, but either used them earlier or want to look at them at some point.

1. **COVID-19-SEIR.cps** A basic SEIR model with three stages of infection (based on a [model by Alison Hill](https://alhill.shinyapps.io/COVID19seir/)). This model was initially intended to be the skeleton for a CT model, but has now been dropped in favor to SIDARTHE.

2. **Lourenco.cps** An implementation by Kieran Smallbone of the  [Lourenço​ et al. model](https://www.medrxiv.org/content/10.1101/2020.03.24.20042291v1) from the Oxford group. Note that the original model includes an explicit time delay which is simulated here by "diffusion".

3. **Westerhoff_Kolodkin_COVID-19_comprehensive_model_2020-03-24.cps** A model calibrated for Luxemburg from [Westerhoff and Kolodkin](https://www.medrxiv.org/content/10.1101/2020.03.29.20045039v1). The model is also [available at FairdomHub](https://fairdomhub.org/models/693?version=1). It includes a population with birth and death and has compartments for infected detected and undetected.

## Licenses
Models come under a variety of licenses depending on their origin, but whenever possible they will be made available as CC0.
