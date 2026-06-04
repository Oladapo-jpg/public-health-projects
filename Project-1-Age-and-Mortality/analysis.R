# Project 1: Age and Mortality in Heart Failure Patients

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# Explore dataset structure and variables
str(hf)
names(hf)

# Summary statistics
summary(hf)

# Check missing values
colSums(is.na(hf))

# Mean age by mortality status
aggregate(age ~ death, data = hf, mean)

# Standard deviation of age by mortality status
aggregate(age ~ death, data = hf, sd)

# Boxplot of age by mortality status
boxplot(age ~ death,
        data = hf,
        names = c("Survived", "Died"),
        main = "Age by Mortality Status",
        ylab = "Age")

# Welch Two Sample t-test
t.test(age ~ death, data = hf)

# Save boxplot as PNG image
png("age_mortality_boxplot.png")

boxplot(age ~ death,
        data = hf,
        names = c("Survived", "Died"),
        main = "Age by Mortality Status",
        ylab = "Age")

library(ggplot2)

ggplot(hf,
       aes(x = factor(death),
           y = age,
           fill = factor(death))) +
  geom_boxplot() +
  labs(title = "Age by Mortality Outcome in Heart Failure Patients",
       x = "Mortality Status",
       y = "Age") +
  scale_x_discrete(labels = c("Survived", "Died")) +
  scale_fill_manual(values = c("#4E79A7", "#E15759")) +
  theme_minimal() +
  theme(legend.position = "none")
