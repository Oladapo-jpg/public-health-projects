# Project 4: Length of Stay and Mortality in Heart Failure Patients Using R

## Introduction

Length of hospital stay is an important healthcare metric that may reflect disease severity, resource utilization, and patient outcomes. This project explored whether hospital length of stay differed between survivors and non-survivors among heart failure patients.

## Research Question

Does length of hospital stay differ between survivors and non-survivors?

## Methods

* Descriptive statistics
* Boxplot visualization
* Welch Two Sample t-test

## Results

### Mean Length of Stay

| Outcome  | Mean Length of Stay (days) |
| -------- | -------------------------: |
| Survived |                       9.15 |
| Died     |                      12.45 |

### Welch Two Sample t-test

* t = -4.15
* p < 0.001
* 95% CI: -4.85 to -1.74 days

## Interpretation

Patients who died had a significantly longer hospital stay than those who survived. On average, non-survivors stayed approximately 3.3 days longer in hospital. The difference was statistically significant, suggesting that length of stay may be associated with patient outcomes in this dataset.

## Public Health Relevance

Understanding factors associated with prolonged hospital stays can help inform healthcare planning, resource allocation, and patient management strategies.

## Visualization

[![Length of Stay by Mortality Status](length_of_stay_mortality_boxplot.png)](https://github.com/Oladapo-jpg/public-health-projects/blob/main/Project-4-Length-of-Stay-and-Mortality/length_of_stay_mortality_boxplot.png.png)

## Tools Used

* R
* RStudio
* ggplot2
* Welch Two Sample t-test
