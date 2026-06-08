# Project 2: Diabetes and Mortality in Heart Failure Patients Using R

## Introduction

Diabetes is a common chronic condition and an important cardiovascular risk factor. This project explored whether mortality differed between heart failure patients with and without diabetes using a simulated heart failure mortality dataset.

## Research Question

Is mortality associated with diabetes status among heart failure patients?

## Dataset

A simulated heart failure mortality dataset containing 1,000 observations was analysed using R.

Variables used:

* diabetes (0 = No Diabetes, 1 = Diabetes)
* death (0 = Survived, 1 = Died)

## Methods

The analysis included:

* Contingency table analysis
* Mortality rate calculation
* Pearson's Chi-square test
* Odds Ratio estimation
* 95% Confidence Interval calculation
* Data visualization using ggplot2

## Results

### Mortality Rates

| Diabetes Status | Mortality Rate (%) |
| --------------- | ------------------ |
| No Diabetes     | 50.6               |
| Diabetes        | 45.6               |

### Chi-square Test

Pearson's Chi-square test showed no statistically significant association between diabetes status and mortality:

* χ² = 1.87
* p = 0.172

### Odds Ratio

* OR = 0.82
* 95% CI: 0.62–1.08

## Interpretation

Patients with diabetes had lower observed odds of death compared with patients without diabetes. However, the confidence interval included 1 and the chi-square test was not statistically significant.

Therefore, this analysis did not provide sufficient evidence to conclude that diabetes status was associated with mortality in this dataset.

## Public Health Relevance

Observed differences in health outcomes should be evaluated using appropriate statistical methods rather than visual inspection alone.

This project demonstrates the importance of distinguishing between apparent differences and statistically supported associations when interpreting public health data.

## Visualization

![Mortality Rate by Diabetes Status](mortality_rate_diabetes.png)

## Tools Used

* R
* RStudio
* ggplot2
* Pearson's Chi-square Test
* Odds Ratio Analysis.
