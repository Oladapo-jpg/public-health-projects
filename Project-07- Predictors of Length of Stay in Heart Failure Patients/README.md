# Project 7: Predictors of Length of Stay in Heart Failure Patients Using Linear Regression

## Introduction

Length of hospital stay is an important healthcare outcome that affects patient experience, healthcare costs, and resource utilization. This project used multivariable linear regression to identify factors independently associated with length of stay among heart failure patients.

## Research Question

Which patient characteristics are independently associated with longer hospital stays among heart failure patients?

## Variables Included

* Age
* Diabetes
* Renal Disease
* Hypertension

## Methods

* Multivariable Linear Regression
* Regression Coefficients (β)
* 95% Confidence Intervals
* Statistical Significance Testing

## Results

| Variable      | Coefficient (β) | p-value |
| ------------- | --------------: | ------: |
| Age           |           0.107 |   0.003 |
| Diabetes      |           1.311 |   0.151 |
| Renal Disease |           1.921 |   0.039 |
| Hypertension  |          -1.041 |   0.213 |

Model Performance:

* R² = 0.015
* Adjusted R² = 0.011
* Overall Model p-value = 0.005

  ## Visualization

[![Predictors of Length of Stay](predictors_length_of_stay_coefficients.png)](https://github.com/Oladapo-jpg/public-health-projects/blob/main/Project-7-%20%20Predictors%20of%20Length%20of%20Stay%20in%20Heart%20Failure%20Patients/Predictors%20of%20Length%20of%20Stay.png)

## Interpretation

Older age and renal disease were independently associated with longer hospital stays.

For every additional year of age, length of stay increased by approximately 0.11 days after adjustment for the other variables.

Patients with renal disease stayed approximately 1.9 additional days in hospital compared with patients without renal disease.

Diabetes and hypertension were not significant predictors of length of stay after adjustment.

## Public Health Relevance

Identifying factors associated with prolonged hospital stays can help healthcare providers anticipate resource needs, improve discharge planning, and better understand patient characteristics linked to healthcare utilization.

## Tools Used

* R
* RStudio
* Linear Regression
* Confidence Intervals
* Data Visualization
