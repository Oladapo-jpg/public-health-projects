# public-health-projects
Practical public health and epidemiological data analysis projects using R.
# Project 1: Age and Mortality in Heart Failure Patients Using R

## Overview

This project explored whether age differed between heart failure patients who survived and those who died using a simulated heart failure mortality dataset analysed in R.

## Objective

To investigate the relationship between patient age and mortality outcome among heart failure patients.

## Dataset

A publicly available simulated heart failure mortality dataset containing 1,000 observations and multiple clinical variables was used for this analysis.

Variables explored in this project included:

* Age
* Mortality status (`death`)

## Methods

The dataset was imported and explored in R using descriptive statistics and visualization techniques.

The following analyses were performed:

* Summary statistics
* Missing value checks
* Grouped mean and standard deviation calculations
* Boxplot visualization
* Welch Two Sample t-test

## Key Findings

The average age of patients who survived was approximately 75.4 years, compared to 82.2 years among patients who died.

The analysis showed strong statistical evidence of a difference in age between mortality groups (p < 0.001).

The 95% confidence interval suggested that patients who died were approximately 5.5 to 8.1 years older on average than survivors.

## Interpretation

The findings suggest that older age may be associated with increased mortality among heart failure patients within this dataset.

## Public Health Relevance

As populations continue to age, understanding factors associated with poorer heart failure outcomes remains important for healthcare planning, risk stratification, and targeted patient management.

## Tools Used

* R
* RStudio
* Descriptive statistics
* Boxplots
* Welch Two Sample t-test

## Files Included

* `analysis.R` — R workflow and statistical analysis
* `age_mortality_boxplot.png` — visualization output
* `simulated HF mort data for GMPH (1K) final.csv` — dataset used for analysis
