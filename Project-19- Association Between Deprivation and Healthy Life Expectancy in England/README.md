# Project 19: Association Between Deprivation and Healthy Life Expectancy in England

## Overview

This project investigates the relationship between socioeconomic deprivation and healthy life expectancy (HLE) in England.

Healthy life expectancy measures the average number of years a person can expect to live in good health. Understanding how HLE varies across deprivation groups helps quantify health inequalities and identify populations most affected by poor health outcomes.

---

## Research Question

**Is deprivation associated with healthy life expectancy in England?**

---

## Data Source

* Office for National Statistics (ONS)
* Healthy Life Expectancy by Index of Multiple Deprivation (IMD)
* Geography: England
* Population: Males
* Period analysed: 2017–2019

---

## Methods

The analysis included:

* Data cleaning and preparation
* Selection of healthy life expectancy at birth
* Filtering to the most recent period (2017–2019)
* Pearson correlation analysis
* Simple linear regression modelling
* Data visualisation using scatter plots and fitted regression lines

### Software

* R
* dplyr
* ggplot2
* readxl

---

## Statistical Methods

### Pearson Correlation

Pearson's correlation coefficient was used to assess the strength and direction of the relationship between deprivation decile and healthy life expectancy.

### Linear Regression

A simple linear regression model was fitted:

HLE = β₀ + β₁(Deprivation Decile)

where:

* HLE = Healthy Life Expectancy
* β₀ = Intercept
* β₁ = Regression coefficient

---

## Results

### Correlation Analysis

| Statistic                   | Value         |
| --------------------------- | ------------- |
| Correlation coefficient (r) | 0.978         |
| 95% Confidence Interval     | 0.908 – 0.995 |
| p-value                     | < 0.001       |

A very strong positive correlation was observed between deprivation decile and healthy life expectancy.

---

### Linear Regression Results

| Parameter              | Estimate |
| ---------------------- | -------- |
| Intercept              | 52.389   |
| Regression coefficient | 1.912    |
| R²                     | 0.957    |
| p-value                | < 0.001  |

The model suggests that each one-decile increase in socioeconomic position was associated with approximately 1.9 additional years of healthy life expectancy.

Deprivation explained 95.7% of the variation in healthy life expectancy.

---

## Figure

![Association Between Deprivation and Healthy Life Expectancy](deprivation_hle_correlation.png)

**Figure 1.** Scatter plot showing the association between deprivation decile and healthy life expectancy among males in England (2017–2019). The fitted regression line demonstrates a strong positive relationship between decreasing deprivation and increasing healthy life expectancy.

---

## Key Findings

* Healthy life expectancy increased steadily across deprivation deciles.
* A very strong positive correlation was observed (r = 0.978).
* The relationship was highly statistically significant (p < 0.001).
* Each increase in deprivation decile was associated with approximately 1.9 additional years of healthy life expectancy.
* Deprivation explained 95.7% of the variation in healthy life expectancy.

---

## Public Health Relevance

Socioeconomic inequalities remain one of the strongest determinants of health outcomes.

The findings demonstrate that people living in less deprived areas experience substantially longer periods of healthy life compared with those living in more deprived communities.

Understanding these inequalities can support public health policies aimed at reducing health disparities and improving population health outcomes.

---

## Limitations

* Ecological analysis using deprivation deciles rather than individual-level data.
* Correlation does not imply causation.
* Analysis focused on males only.
* Other determinants of healthy life expectancy were not included in the model.

---

## Conclusion

A very strong association was observed between deprivation and healthy life expectancy in England. Areas with lower deprivation consistently experienced higher healthy life expectancy. The results highlight the importance of addressing socioeconomic inequalities to improve population health and reduce health disparities.
