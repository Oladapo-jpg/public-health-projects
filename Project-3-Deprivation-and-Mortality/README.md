# Project 3: Deprivation and Mortality in Heart Failure Patients Using R

## Introduction

Health inequalities are an important public health concern. This project explored whether mortality differed across deprivation quintiles among heart failure patients.

## Research Question

Is mortality associated with deprivation quintile among heart failure patients?

## Methods

* Contingency table analysis
* Mortality rate calculation
* Pearson's Chi-square test
* Data visualization using ggplot2

## Results

### Mortality Rates

| Deprivation Quintile | Mortality Rate (%) |
| -------------------- | ------------------ |
| 1                    | 56.5               |
| 2                    | 45.9               |
| 3                    | 50.2               |
| 4                    | 47.3               |
| 5                    | 49.5               |

### Chi-square Test

* χ² = 4.29
* df = 4
* p = 0.368

## Interpretation

Mortality rates varied slightly across deprivation quintiles, but no consistent pattern was observed. The Chi-square test indicated no statistically significant association between deprivation level and mortality.

## Public Health Relevance

Understanding whether health outcomes vary across socioeconomic groups is an important aspect of public health research. This project demonstrates the use of categorical data analysis to investigate potential health inequalities.

## Visualization

![Mortality Rate by Deprivation Quintile](mortality_deprivation_quintile.png)

## Tools Used

* R
* RStudio
* ggplot2
* Pearson's Chi-square Test
