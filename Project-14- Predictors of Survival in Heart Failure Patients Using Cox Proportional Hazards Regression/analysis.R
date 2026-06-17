# Project 14: Predictors of Survival in Heart Failure Patients
# Method: Cox Proportional Hazards Regression

# ------------------------------------------------------------
# 1. Load required packages
# ------------------------------------------------------------

library(survival)

# ------------------------------------------------------------
# 2. Import dataset
# ------------------------------------------------------------

hf <- read.csv("heart_failure_clinical_records_dataset.csv")

# Inspect dataset
str(hf)
head(hf)

# Check key outcome variables
summary(hf$time)
table(hf$DEATH_EVENT)

# ------------------------------------------------------------
# 3. Fit Cox proportional hazards model
# ------------------------------------------------------------

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

# View full model output
summary(cox_model)

# ------------------------------------------------------------
# 4. Extract Hazard Ratios and 95% Confidence Intervals
# ------------------------------------------------------------

hr_table <- exp(cbind(
  HR = coef(cox_model),
  confint(cox_model)
))

hr_table

# ------------------------------------------------------------
# 5. Check proportional hazards assumption
# ------------------------------------------------------------

ph_test <- cox.zph(cox_model)

ph_test

# Plot proportional hazards diagnostic
plot(ph_test)

# ------------------------------------------------------------
# 6. Create forest plot of Hazard Ratios
# ------------------------------------------------------------

hr <- exp(coef(cox_model))
ci <- exp(confint(cox_model))

variables <- c(
  "Age",
  "Diabetes",
  "High Blood Pressure",
  "Anaemia",
  "Sex",
  "Ejection Fraction",
  "Serum Creatinine"
)

png(
  "forest_plot_hazard_ratios.png",
  width = 1200,
  height = 800,
  res = 150
)

par(mar = c(5, 10, 4, 2))

plot(
  hr,
  seq_along(hr),
  xlim = c(0.5, 2.6),
  pch = 19,
  yaxt = "n",
  xlab = "Hazard Ratio (95% CI)",
  ylab = "",
  main = "Hazard Ratios for Mortality in Heart Failure Patients"
)

arrows(
  ci[, 1],
  seq_along(hr),
  ci[, 2],
  seq_along(hr),
  angle = 90,
  code = 3,
  length = 0.05
)

abline(v = 1, lty = 2)

axis(
  2,
  at = seq_along(hr),
  labels = variables,
  las = 1
)

dev.off()

# ------------------------------------------------------------
# 7. Model performance
# ------------------------------------------------------------

summary(cox_model)$concordance
