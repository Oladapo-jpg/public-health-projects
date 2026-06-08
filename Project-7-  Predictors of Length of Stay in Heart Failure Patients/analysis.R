# Project 7: Predictors of Length of Stay in Heart Failure Patients
# Using Linear Regression

# Load required package
library(ggplot2)

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# 1. Explore outcome and predictor variables
summary(hf$los)
summary(hf$age)

table(hf$diabetes)
table(hf$renal_disease)
table(hf$hypertension)

# 2. Fit multivariable linear regression model
model_los <- lm(
  los ~ age + diabetes + renal_disease + hypertension,
  data = hf
)

# 3. View model summary
summary(model_los)

# 4. Create coefficient results for visualization
coef_results <- data.frame(
  Variable = c("Age", "Diabetes", "Renal Disease", "Hypertension"),
  Estimate = c(0.107, 1.311, 1.921, -1.041),
  LowerCI = c(0.036, -0.476, 0.098, -2.679),
  UpperCI = c(0.179, 3.098, 3.744, 0.597)
)

# 5. Coefficient plot
p <- ggplot(coef_results,
            aes(x = Estimate, y = Variable)) +
  geom_point(size = 3) +
  geom_errorbarh(aes(xmin = LowerCI, xmax = UpperCI),
                 height = 0.2) +
  geom_vline(xintercept = 0,
             linetype = "dashed") +
  labs(
    title = "Predictors of Length of Stay",
    subtitle = "Adjusted linear regression model",
    x = "Regression Coefficient (Days)",
    y = "Variable"
  ) +
  theme_minimal()

print(p)

# 6. Save plot
ggsave("predictors_length_of_stay_coefficients.png",
       plot = p,
       width = 7,
       height = 5)
