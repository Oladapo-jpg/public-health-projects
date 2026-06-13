# Project 11: Educational Attainment Inequalities by Disability Status in the UK

## Introduction

Education is an important social determinant of health and is closely associated with employment opportunities, income, living conditions, and long-term health outcomes. Understanding differences in educational attainment between disabled and non-disabled populations can help identify important social inequalities that may contribute to broader health disparities.

This project explores trends in educational attainment among adults aged 21–64 years in the United Kingdom between 2014 and 2021, comparing disabled and non-disabled populations using official data from the Office for National Statistics (ONS).

---

## Data Source

Office for National Statistics (ONS)

Dataset:
Disability and Education Reference Tables

Table Used:
Table 1 – Highest level of qualification of people aged 21 to 64 by disability status, UK, year ending June 2014 to year ending June 2021

https://www.ons.gov.uk

**Disability and Education Reference Tables**

Table 1: Highest level of qualification of people aged 21 to 64 by disability status, UK, year ending June 2014 to year ending June 2021.

Source: Office for National Statistics (ONS)

---

## Research Question

How has educational attainment changed among disabled and non-disabled adults in the UK between 2014 and 2021?

---

## Objectives

* Examine trends in degree-level educational attainment among disabled and non-disabled adults.
* Examine trends in the proportion of adults with no formal qualifications.
* Explore whether educational inequalities persisted over time.
* Demonstrate the use of population-level data to investigate social determinants of health.

---

## Methods

### Data Preparation

* Imported ONS reference table data into R.
* Extracted educational attainment indicators for disabled and non-disabled adults.
* Removed sample-size rows not required for analysis.
* Reformatted the data into long format for visualization.

### Analysis

Two indicators were examined:

1. Degree or equivalent qualification (%)
2. No qualification (%)

Trends were visualized using line charts comparing disabled and non-disabled adults between 2014 and 2021.

### Software

* R
* ggplot2
* tidyr

---

## Results

### Figure 1: Degree-Level Educational Attainment

The proportion of adults holding a degree or equivalent qualification increased steadily between 2014 and 2021 for both groups.

* Disabled adults increased from 15.9% to 24.9%.
* Non-disabled adults increased from 31.9% to 42.7%.

Although both groups experienced improvements, non-disabled adults consistently reported higher levels of degree attainment throughout the study period.

### Figure 2: Adults with No Qualifications

The proportion of adults with no qualifications declined over time for both groups.

* Disabled adults decreased from 21.6% to 13.3%.
* Non-disabled adults decreased from 7.2% to 4.6%.

Despite improvements, disabled adults remained substantially more likely to have no qualifications.

---

## Key Findings

* Educational attainment improved between 2014 and 2021 for both disabled and non-disabled adults.
* Degree-level attainment increased in both groups.
* The proportion of adults with no qualifications declined in both groups.
* Educational inequalities persisted throughout the period.
* Disabled adults consistently experienced lower degree attainment and higher levels of having no qualifications.

---

## Public Health Relevance

Educational attainment is strongly associated with health and wellbeing. Lower levels of education may influence employment opportunities, income, housing conditions, and access to resources that support good health.

The findings highlight persistent inequalities experienced by disabled adults and demonstrate how social determinants can contribute to broader health disparities within the population.

Understanding these patterns can help inform policies aimed at improving educational opportunities and reducing inequalities.

---

## Limitations

* The analysis is descriptive and does not establish causation.
* Only selected educational indicators were examined.
* The analysis relies on aggregated ONS data rather than individual-level records.
* Other factors such as age, region, socioeconomic status, and impairment severity were not explored in this project.

---

## Conclusion

Between 2014 and 2021, educational attainment improved among both disabled and non-disabled adults in the UK. However, substantial inequalities remained. Disabled adults were consistently less likely to hold degree-level qualifications and more likely to have no qualifications.

This project demonstrates how routinely collected population data can be used to explore social determinants of health and identify persistent inequalities within society.
