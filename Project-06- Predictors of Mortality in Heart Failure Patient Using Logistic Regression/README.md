# Project 6: Predictors of Mortality in Heart Failure Patients Using Logistic Regression

## Introduction

Understanding factors associated with mortality is an important aspect of epidemiological and public health research. This project used multivariable logistic regression to identify independent predictors of mortality among heart failure patients.

## Research Question

Which patient characteristics are independently associated with mortality among heart failure patients?

## Variables Included

* Age
* Diabetes
* Renal Disease
* Hypertension

## Methods

* Multivariable Logistic Regression
* Odds Ratio (OR) estimation
* 95% Confidence Intervals
* Statistical significance testing.

## Results

| Variable      | Adjusted OR | 95% CI    | p-value |
| ------------- | ----------: | --------- | ------: |
| Age           |        1.07 | 1.05–1.08 |  <0.001 |
| Diabetes      |        1.09 | 0.81–1.48 |   0.568 |
| Renal Disease |        1.35 | 1.00–1.84 |   0.054 |
| Hypertension  |        0.80 | 0.61–1.06 |   0.121 |

## Interpretation

Age was the strongest independent predictor of mortality. After adjustment for diabetes, renal disease, and hypertension, each additional year of age was associated with approximately 7% higher odds of mortality.

Diabetes and hypertension were not significantly associated with mortality after adjustment. Renal disease showed a borderline association with mortality.

## Public Health Relevance

Multivariable models help identify independent risk factors while accounting for potential confounding variables. Logistic regression is widely used in epidemiology, clinical research, and public health investigations.

## Tools Used

* R
* RStudio
* Logistic Regression
* Odds Ratios
* Confidence Intervals.
