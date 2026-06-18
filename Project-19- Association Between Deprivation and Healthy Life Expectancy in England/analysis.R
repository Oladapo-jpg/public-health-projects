# Project 19: Association Between Deprivation and Healthy Life Expectancy in England

# ----------------------------------------

# Load Packages

# ----------------------------------------

library(readxl)
library(dplyr)
library(ggplot2)

# ----------------------------------------

# Import Dataset

# ----------------------------------------

imd_hle <- read_excel(
"healthy_life_expectancy_by_deprivation_england.xlsx",
sheet = "Table 1"
)

# ----------------------------------------

# Clean Dataset

# ----------------------------------------

# Remove duplicated header row

hle_imd <- imd_hle[-1, ]

# Rename variables

names(hle_imd)[1:13] <- c(
"Period",
"Decile",
"Sex",
"SexCode",
"AgeGroup",
"AgeBand",
"LE",
"LE_LCI",
"LE_UCI",
"HLE",
"HLE_LCI",
"HLE_UCI",
"Proportion"
)

# ----------------------------------------

# Prepare Analysis Dataset

# ----------------------------------------

# Select healthy life expectancy at birth

hle_birth <- hle_imd %>%
filter(AgeGroup == "<1")

# Select most recent period

hle_latest <- hle_birth %>%
filter(Period == "2017-2019")

# Select males only

male_hle <- hle_latest %>%
filter(Sex == "Male") %>%
select(
Decile,
HLE
) %>%
mutate(
Decile = as.numeric(Decile),
HLE = as.numeric(HLE)
)

# ----------------------------------------

# Descriptive Statistics

# ----------------------------------------

summary(male_hle)

# ----------------------------------------

# Correlation Analysis

# ----------------------------------------

correlation <- cor(
male_hle$Decile,
male_hle$HLE
)

correlation

correlation_test <- cor.test(
male_hle$Decile,
male_hle$HLE
)

correlation_test

# ----------------------------------------

# Linear Regression

# ----------------------------------------

lm_hle <- lm(
HLE ~ Decile,
data = male_hle
)

summary(lm_hle)

# ----------------------------------------

# Regression Equation

# ----------------------------------------

coef(lm_hle)

# Equation:

# HLE = 52.389 + 1.912 × Decile

# ----------------------------------------

# Create Scatter Plot

# ----------------------------------------

cor_plot <- ggplot(
male_hle,
aes(
x = Decile,
y = HLE
)
) +
geom_point(size = 3) +
geom_smooth(
method = "lm",
se = TRUE
) +
labs(
title = "Association Between Deprivation and Healthy Life Expectancy in England",
x = "Deprivation Decile",
y = "Healthy Life Expectancy (Years)"
) +
theme_minimal()

print(cor_plot)

# ----------------------------------------

# Save Figure

# ----------------------------------------

ggsave(
"deprivation_hle_correlation.png",
plot = cor_plot,
width = 10,
height = 6,
dpi = 300
)

# ----------------------------------------

# Model Performance

# ----------------------------------------

model_summary <- summary(lm_hle)

model_summary$r.squared
model_summary$adj.r.squared

# ----------------------------------------

# End of Analysis

# ----------------------------------------
