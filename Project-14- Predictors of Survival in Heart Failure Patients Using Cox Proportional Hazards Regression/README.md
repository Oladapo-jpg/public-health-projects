# Project 14: Predictors of Survival in Heart Failure Patients Using Cox Proportional Hazards Regression

## Introduction

Survival analysis is an important epidemiological technique used to investigate factors associated with the timing of health outcomes. Unlike logistic regression, which examines whether an event occurs, Cox proportional hazards regression examines how different factors influence the hazard of experiencing an event over time.

This project investigates independent predictors of mortality among heart failure patients using Cox proportional hazards regression.

## Data Source

Heart Failure Clinical Records Dataset

Source: UCI Machine Learning Repository

The dataset contains clinical information for 299 patients with heart failure, including demographic characteristics, comorbidities, laboratory measurements, follow-up time, and mortality outcomes.

## Research Question

Which clinical factors are independently associated with mortality among heart failure patients?

## Objectives

* Identify independent predictors of mortality.
* Estimate hazard ratios (HRs) and 95% confidence intervals.
* Examine the effects of demographic and clinical risk factors.
* Demonstrate the application of survival modelling in clinical epidemiology.

## Methods

### Data Preparation

The dataset was imported into R and relevant clinical variables were selected for analysis.

Outcome variables:

* Follow-up time (`time`)
* Mortality status (`DEATH_EVENT`)

Predictor variables:

* Age
* Diabetes
* High blood pressure
* Anaemia
* Sex
* Ejection fraction
* Serum creatinine

### Analysis

A multivariable Cox proportional hazards regression model was fitted to estimate adjusted hazard ratios for mortality.

### Software

* R
* survival

## Results

### Multivariable Cox Regression

The final model identified several significant predictors of mortality.

#### Age

Age was significantly associated with mortality (HR = 1.046, 95% CI: 1.028–1.066, p < 0.001).

Each additional year of age was associated with a 4.6% higher hazard of death.

#### High Blood Pressure

High blood pressure was significantly associated with mortality (HR = 1.540, 95% CI: 1.013–2.342, p = 0.043).

Patients with hypertension experienced a 54% higher hazard of death compared with those without hypertension.

#### Ejection Fraction

Ejection fraction was significantly associated with mortality (HR = 0.950, 95% CI: 0.931–0.969, p < 0.001).

Higher ejection fraction was associated with a lower hazard of death.

#### Serum Creatinine

Serum creatinine was significantly associated with mortality (HR = 1.418, 95% CI: 1.244–1.617, p < 0.001).

Higher serum creatinine levels were associated with an increased hazard of death.

#### Non-Significant Predictors

Diabetes, anaemia, and sex were not significantly associated with mortality after adjustment for other variables.

### Model Performance

The model demonstrated good discriminatory performance (Concordance = 0.731).

Likelihood ratio, Wald, and Score tests all indicated that the model was statistically significant (p < 0.001).

## Key Findings

* Older age was associated with increased mortality risk.
* Hypertension was associated with higher mortality risk.
* Higher ejection fraction was protective.
* Elevated serum creatinine was a strong predictor of mortality.
* Diabetes, anaemia, and sex were not independently associated with mortality.

## Public Health Relevance

Heart failure remains a major cause of morbidity and mortality worldwide. Identifying factors associated with survival can support risk stratification, clinical decision-making, and patient management.

This project demonstrates how survival modelling can be used to identify independent predictors of mortality and illustrates the value of Cox regression in epidemiological and clinical research.

## Limitations

* The dataset was relatively small.
* Observational data cannot establish causality.
* Additional clinical and treatment-related variables were not included.
* Findings may not be generalisable to all patient populations.

## Conclusion

Cox proportional hazards regression identified older age, hypertension, lower ejection fraction, and higher serum creatinine levels as significant predictors of mortality among heart failure patients. The model demonstrated good predictive performance and highlights the value of survival analysis techniques in clinical epidemiology.
