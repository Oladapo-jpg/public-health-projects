# Project 20: Forecasting Adult Overweight and Obesity Prevalence in England

## Overview

This project examines recent trends in adult overweight and obesity prevalence in England and uses linear regression to forecast future prevalence levels.

Overweight and obesity are major public health challenges associated with increased risks of cardiovascular disease, diabetes, cancer, and reduced quality of life. Understanding future trends can help inform prevention strategies and healthcare planning.

---

## Research Question

**What might adult overweight and obesity prevalence in England look like by 2035 if current trends continue?**

---

## Data Source

* Fingertips Public Health Profiles
* Indicator: Overweight (including obesity) prevalence in adults (18+ years)
* Geography: England
* Period: 2015/16 to 2024/25

---

## Methods

The analysis included:

* Data cleaning and preparation
* Trend analysis
* Linear regression modelling
* Forecasting future prevalence levels (2026–2035)
* Data visualisation

### Software

* R
* dplyr
* ggplot2
* readxl

---

## Statistical Methods

A simple linear regression model was fitted:

Prevalence = β₀ + β₁(Year)

where:

* Prevalence = Adult overweight and obesity prevalence (%)
* Year = Observation year

The fitted model was then used to forecast prevalence from 2026 to 2035.

---

## Results

### Linear Regression

| Statistic       | Value                   |
| --------------- | ----------------------- |
| Annual increase | 0.419 percentage points |
| R²              | 0.980                   |
| Adjusted R²     | 0.978                   |
| p-value         | < 0.001                 |

The model indicated a significant upward trend in adult overweight and obesity prevalence.

Approximately 98.0% of the variation in prevalence was explained by year.

---

## Forecast

| Year | Forecasted Prevalence (%) |
| ---- | ------------------------- |
| 2026 | 65.23                     |
| 2027 | 65.65                     |
| 2028 | 66.07                     |
| 2029 | 66.49                     |
| 2030 | 66.91                     |
| 2031 | 67.32                     |
| 2032 | 67.74                     |
| 2033 | 68.16                     |
| 2034 | 68.58                     |
| 2035 | 69.00                     |

---

## Figure

[![Forecast of Adult Overweight and Obesity Prevalence](obesity_forecast_england.png)](https://github.com/Oladapo-jpg/public-health-projects/blob/main/Project-20-Forecasting-Adult-Overweight-and-Obesity/obesity_forecast_england35.png)

**Figure 1.** Observed and forecast adult overweight and obesity prevalence in England. Forecasts were generated using a linear regression model.

---

## Key Findings

* Prevalence increased from 61.2% in 2015/16 to 64.6% in 2024/25.
* A significant upward trend was observed (p < 0.001).
* The model explained 98.0% of the variation in prevalence.
* Forecasts suggest prevalence could approach 69% by 2035 if current trends continue.

---

## Public Health Relevance

Rising levels of overweight and obesity place increasing pressure on health services and contribute to the burden of chronic disease.

Forecasting future prevalence can support long-term planning and inform prevention strategies aimed at improving population health.

---

## Limitations

* Forecasts assume current trends continue unchanged.
* Linear regression may not capture future policy changes or behavioural shifts.
* Analysis was conducted at the national level and does not reflect regional variation.

---

## Conclusion

Adult overweight and obesity prevalence in England has increased steadily over the past decade. If current trends continue, prevalence could approach 69% by 2035. These findings highlight the need for sustained public health interventions to address obesity and its associated health consequences.
