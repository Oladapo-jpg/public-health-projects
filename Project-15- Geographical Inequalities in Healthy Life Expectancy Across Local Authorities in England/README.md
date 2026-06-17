# Project 15: Geographical Inequalities in Healthy Life Expectancy Across Local Authorities in England

## Introduction

Healthy Life Expectancy (HLE) measures the average number of years a person can expect to live in good health. It is an important indicator of population health because it reflects both the length and quality of life.

Geographical differences in healthy life expectancy can highlight inequalities in health outcomes, socioeconomic conditions, healthcare access, and wider determinants of health. Understanding these patterns can help inform public health policy and resource allocation.

This project explores healthy life expectancy across local authorities in England using official data from the Office for National Statistics (ONS).

## Data Source

Office for National Statistics (ONS)

Dataset: Healthy Life Expectancy at Birth by Local Authority, England (2022–2024)

Source: Office for National Statistics (ONS)

Original dataset obtained from the ONS Health State Life Expectancies release. This project used data from Table 1 and was restricted to local authorities in England for the period 2022–2024.
Website: https://www.ons.gov.uk

## Research Question

How does healthy life expectancy vary across local authorities in England?

## Objectives

* Examine healthy life expectancy at birth across local authorities in England.
* Identify local authorities with the highest and lowest healthy life expectancy.
* Compare patterns between males and females.
* Explore geographical inequalities in population health.
* Demonstrate the use of public health intelligence data in R.

## Methods

### Data Preparation

The ONS Healthy Life Expectancy dataset was imported into R.

The analysis was restricted to:

* England
* Local Authorities
* 2022–2024 period
* Healthy Life Expectancy at birth (<1 age group)

Male and female records were analysed separately.

### Analysis

The following analyses were performed:

* Summary statistics
* Ranking of local authorities
* Identification of top 10 and bottom 10 authorities
* Data visualisation using horizontal bar charts

### Software

* R
* dplyr
* ggplot2
* readxl

## Results

### Figure 1: Female Healthy Life Expectancy

Richmond upon Thames recorded the highest female healthy life expectancy at 70.3 years.

Hartlepool recorded the lowest female healthy life expectancy at 51.2 years.

The difference between the highest and lowest local authorities was approximately 19.1 years.

### Figure 2: Male Healthy Life Expectancy

Richmond upon Thames recorded the highest male healthy life expectancy at 69.3 years.

Blackpool recorded the lowest male healthy life expectancy at 50.9 years.

The difference between the highest and lowest local authorities was approximately 18.4 years.

## Key Findings

* Healthy life expectancy varied substantially across local authorities in England.
* Richmond upon Thames recorded the highest healthy life expectancy for both males and females.
* Blackpool recorded the lowest male healthy life expectancy.
* Hartlepool recorded the lowest female healthy life expectancy.
* The difference between the highest and lowest local authorities was approximately 18.4 years for males and 19.1 years for females.
* Local authorities in London and the South East generally reported higher healthy life expectancy.
* Several northern and more deprived authorities reported substantially lower healthy life expectancy.
* The findings demonstrate persistent geographical inequalities in health across England.

## Public Health Relevance

Healthy life expectancy is an important population health indicator because it reflects not only how long people live but also the quality of those years.

Large geographical differences in healthy life expectancy may reflect variations in socioeconomic conditions, health behaviours, environmental factors, employment opportunities, housing quality, and access to healthcare services.

Understanding these inequalities can support targeted interventions and inform policies aimed at improving health outcomes and reducing disparities between communities.

## Limitations

* The analysis is descriptive and does not establish causality.
* The study used aggregated area-level data rather than individual-level records.
* Potential drivers of healthy life expectancy differences were not examined.
* Findings may be influenced by underlying demographic and socioeconomic differences between local authorities.

## Conclusion

Healthy life expectancy varied considerably across local authorities in England. Substantial differences were observed between the highest- and lowest-performing areas for both males and females, highlighting persistent geographical inequalities in population health.

This project demonstrates how routinely collected national data can be used to identify and monitor health inequalities across communities and illustrates the value of public health intelligence in informing population health decision-making.
