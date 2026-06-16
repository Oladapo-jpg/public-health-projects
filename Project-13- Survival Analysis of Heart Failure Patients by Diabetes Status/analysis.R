# Project 13: Survival Analysis of Heart Failure Patients by Diabetes Status
# Method: Kaplan-Meier survival analysis and log-rank test

# Load required package
library(survival)

# Import dataset
hf <- read.csv("heart_failure_clinical_records_dataset.csv")

# Inspect dataset
str(hf)
head(hf)

# Check key variables
table(hf$diabetes)
table(hf$DEATH_EVENT)

# Create survival object
surv_object <- Surv(
  time = hf$time,
  event = hf$DEATH_EVENT
)

# Fit Kaplan-Meier survival curves by diabetes status
km_fit <- survfit(
  surv_object ~ diabetes,
  data = hf
)

# View survival estimates
summary(km_fit)

# Plot Kaplan-Meier survival curves
plot(
  km_fit,
  col = c("blue", "red"),
  lwd = 2,
  xlab = "Follow-up Time (Days)",
  ylab = "Survival Probability",
  main = "Kaplan-Meier Survival Curves by Diabetes Status"
)

legend(
  "bottomleft",
  legend = c("No Diabetes", "Diabetes"),
  col = c("blue", "red"),
  lwd = 2,
  bty = "n"
)

# Log-rank test
log_rank_test <- survdiff(
  surv_object ~ diabetes,
  data = hf
)

log_rank_test

# Optional: calculate p-value manually from chi-square
p_value <- 1 - pchisq(log_rank_test$chisq, df = 1)
p_value
