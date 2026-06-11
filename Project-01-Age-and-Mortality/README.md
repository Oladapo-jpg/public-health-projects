# public-health-projects
Practical public health and epidemiological data analysis projects using R.
# Project 1: Age and Mortality in Heart Failure Patients Using R

## Introduction

Heart failure remains a major public health challenge, particularly among older adults. Understanding factors associated with mortality may help support patient management and healthcare planning.

This project explored whether age differed between heart failure patients who survived and those who died using a simulated heart failure mortality dataset analysed in R.

---

## Objective

To investigate the relationship between age and mortality outcome among heart failure patients.

---

## Dataset

A simulated heart failure mortality dataset containing:

* 1,000 observations
* demographic variables
* clinical comorbidities
* mortality outcome data

Variables explored in this project:

* `age`
* `death`

---

## Methods

The analysis was conducted in R using:

* exploratory data analysis
* summary statistics
* missing value assessment
* grouped descriptive statistics
* boxplot visualization
* Welch Two Sample t-test

---

## Key Findings

* Mean age among survivors: **75.4 years**
* Mean age among patients who died: **82.2 years**

The Welch t-test showed strong statistical evidence of a difference in age between groups:

* **p < 0.001**

The 95% confidence interval suggested that patients who died were approximately **5.5 to 8.1 years older on average** than survivors.

---

## Interpretation

The findings suggest that older age may be associated with increased mortality among heart failure patients within this dataset.

---

## Public Health Relevance

As populations continue to age, understanding factors associated with poorer heart failure outcomes remains important for:

* healthcare planning
* risk stratification
* targeted patient management

---

## Visualization

[Project-1-Age-and-Mortality/age_mortality_boxplot.png](https://github.com/Oladapo-jpg/public-health-projects/commit/6c0b24936ce4995fca1d343b0c292c67481f676e)

## Tools Used

* R
* RStudio
* ggplot2
* Welch Two Sample t-test

---

## Repository Contents

* `analysis.R`
* `age_mortality_boxplot.png`
* `simulated HF mort data for GMPH (1K) final.csv`
