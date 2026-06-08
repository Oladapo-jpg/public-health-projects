# Project 6: Predictors of Mortality in Heart Failure Patients
# Using Logistic Regression

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# Explore variables
table(hf$death)
table(hf$diabetes)
table(hf$renal_disease)
table(hf$hypertension)

summary(hf$age)

# Fit logistic regression model
model <- glm(
  death ~ age + diabetes + renal_disease + hypertension,
  data = hf,
  family = binomial
)

# Model summary
summary(model)

# Adjusted Odds Ratios
exp(coef(model))

# 95% Confidence Intervals for Odds Ratios
exp(confint(model))

library(ggplot2)

or_results <- data.frame(
  Variable = c("Age", "Diabetes", "Renal Disease", "Hypertension"),
  OR = c(1.066, 1.092, 1.351, 0.804),
  LowerCI = c(1.052, 0.808, 0.995, 0.609),
  UpperCI = c(1.081, 1.478, 1.836, 1.059)
)

p <- ggplot(or_results,
            aes(x = OR,
                y = Variable)) +
  geom_point(size = 3) +
  geom_errorbar(aes(xmin = LowerCI, xmax = UpperCI),
                 height = 0.2) +
  geom_vline(xintercept = 1,
             linetype = "dashed") +
  labs(
    title = "Adjusted Odds Ratios for Mortality",
    subtitle = "95% confidence intervals shown"
    x = "Adjusted Odds Ratio",
    y = "Variable"
  ) +
  theme_minimal()

print(p)

ggsave("adjusted_odds_ratios_mortality.png",
       plot = p,
       width = 7,
       height = 5)
