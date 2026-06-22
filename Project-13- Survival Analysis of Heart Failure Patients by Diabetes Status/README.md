# Project 13: Survival Analysis of Heart Failure Patients by Diabetes Status

## Introduction

Survival analysis is a widely used epidemiological technique that examines not only whether an event occurs, but also when it occurs. In healthcare research, survival analysis can provide important insights into patient prognosis and help identify factors associated with earlier mortality.

This project uses Kaplan-Meier survival analysis to investigate whether survival experiences differ between heart failure patients with and without diabetes. The analysis demonstrates the application of time-to-event methods in epidemiological research using clinical patient data.

## Data Source

Heart Failure Clinical Records Dataset

Source: UCI Machine Learning Repository

Dataset: Heart Failure Clinical Records

The dataset contains clinical information for 299 patients with heart failure, including demographic characteristics, comorbidities, laboratory measurements, follow-up time, and mortality outcomes.

## Research Question

Does survival time differ between heart failure patients with and without diabetes?

## Objectives

* Introduce the use of survival analysis in epidemiological research.
* Estimate survival probabilities using Kaplan-Meier methods.
* Compare survival experiences between diabetic and non-diabetic patients.
* Perform a log-rank test to assess differences in survival distributions.
* Demonstrate the application of time-to-event analysis using clinical data.

## Methods

### Data Preparation

* Imported the Heart Failure Clinical Records dataset into R.
* Identified follow-up time using the `time` variable.
* Identified mortality status using the `DEATH_EVENT` variable.
* Used diabetes status as the exposure variable.

### Analysis

A Kaplan-Meier survival analysis was conducted to estimate survival probabilities over time.

The following analyses were performed:

* Construction of Kaplan-Meier survival curves.
* Comparison of survival experiences between diabetic and non-diabetic patients.
* Log-rank test to assess statistical differences between survival distributions.

### Software

* R
* survival
* ggplot2

## Results

### Figure 1: Kaplan-Meier Survival Curves by Diabetes Status

Kaplan-Meier survival curves were generated for heart failure patients with and without diabetes. The survival curves were largely overlapping throughout the follow-up period, suggesting similar survival experiences between the two groups.

### Log-Rank Test

A log-rank test was performed to compare survival distributions between diabetic and non-diabetic patients.

Results indicated:

* χ² = 0.0
* Degrees of freedom = 1
* p = 0.80

The test found no statistically significant difference in survival between patients with and without diabetes.

### Key Findings

* Survival probabilities declined over time in both groups.
* Kaplan-Meier curves showed substantial overlap.
* No statistically significant difference in survival was observed between diabetic and non-diabetic patients.
* Diabetes status was not associated with shorter survival time in this dataset.

## Public Health Relevance

Heart failure is a major contributor to morbidity and mortality worldwide. Understanding factors that influence patient survival is important for healthcare planning and clinical decision-making.

This project demonstrates how survival analysis can be used to examine time-to-event outcomes in patient populations. It also highlights that risk factors associated with disease occurrence do not necessarily translate into differences in survival duration

The project provides an introduction to survival analysis methods commonly used in epidemiology, clinical research, and public health studies.

## Limitations

* The analysis was based on a relatively small clinical dataset.
* Only diabetes status was examined as the exposure variable.
* Potential confounding factors were not adjusted for in this analysis.
* The study used observational data and cannot establish causation.
* Survival experiences may be influenced by additional clinical characteristics not explored in this project.

## Conclusion

Kaplan-Meier survival analysis found no evidence of a significant difference in survival between heart failure patients with and without diabetes. Survival curves for both groups were largely similar throughout the follow-up period, and the log-rank test indicated no statistically significant difference in survival distributions.

This project demonstrates the application of survival analysis techniques in epidemiological research and provides an introduction to time-to-event methods commonly used in public health and clinical investigations.
