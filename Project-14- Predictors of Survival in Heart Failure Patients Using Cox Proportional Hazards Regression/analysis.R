# Project 14: Predictors of Survival in Heart Failure Patients
# Cox Proportional Hazards Regression

# Load package
library(survival)

# Import dataset
hf <- read.csv("heart_failure_clinical_records_dataset.csv")

# Inspect data
str(hf)

# Fit Cox proportional hazards model
cox_model <- coxph(
  Surv(time, DEATH_EVENT) ~
    age +
    diabetes +
    high_blood_pressure +
    anaemia +
    sex +
    ejection_fraction +
    serum_creatinine,
  data = hf
)

# Model summary
summary(cox_model)

# Hazard ratios with confidence intervals
exp(cbind(
  HR = coef(cox_model),
  confint(cox_model)
))
