# Project 5: Renal Disease and Mortality in Heart Failure Patients Using R

## Introduction

Renal disease is a common comorbidity among patients with heart failure and may influence patient outcomes. This project explored whether mortality differed between patients with and without renal disease.

## Research Question

Is renal disease associated with mortality among heart failure patients?

## Methods

- Contingency table analysis
- Mortality rate calculation
- Pearson's Chi-square test
- Data visualization using ggplot2

## Results

### Mortality Rates

| Renal Disease | Mortality Rate (%) |
|--------------|-------------------:|
| No | 47.5 |
| Yes | 54.2 |

### Chi-square Test

- χ² = 3.08
- df = 1
- p = 0.079

## Interpretation

Patients with renal disease had a higher observed mortality rate (54.2%) than those without renal disease (47.5%). However, the Chi-square test showed that this difference was not statistically significant at the 5% significance level.

## Public Health Relevance

Comorbid conditions such as renal disease are important considerations in heart failure management. This project demonstrates the importance of distinguishing between observed differences and statistically supported associations when interpreting health data.

## Visualization

[![Mortality Rate by Renal Disease Status](mortality_rate_renal_disease.png)](https://github.com/Oladapo-jpg/public-health-projects/commit/b4b7d05d79251c2406b676c485b08379f3f78004)

## Tools Used

- R
- RStudio
- ggplot2
- Pearson's Chi-square Test.
