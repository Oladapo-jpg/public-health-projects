# Project 5: Renal Disease and Mortality in Heart Failure Patients

# Load required package
library(ggplot2)

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# 1. Explore renal disease and mortality variables
table(hf$renal_disease)
table(hf$death)

# 2. Create contingency table
renal_death_table <- table(hf$renal_disease, hf$death)
renal_death_table

# 3. Calculate mortality rates by renal disease status
prop.table(renal_death_table, margin = 1) * 100

# 4. Pearson's Chi-square test
chisq.test(renal_death_table)

# 5. Create data for visualization
mortality_renal <- data.frame(
  RenalDisease = c("No", "Yes"),
  MortalityRate = c(47.54, 54.22)
)

# 6. Plot mortality rate by renal disease status
p <- ggplot(mortality_renal,
            aes(x = RenalDisease, y = MortalityRate)) +
  geom_col(fill = "#4E79A7") +
  geom_text(aes(label = round(MortalityRate, 1)),
            vjust = -0.5,
            size = 5) +
  ylim(0, 65) +
  labs(
    title = "Mortality Rate by Renal Disease Status",
    subtitle = "No statistically significant association (p = 0.079)",
    x = "Renal Disease",
    y = "Mortality Rate (%)"
  ) +
  theme_minimal()

print(p)

# 7. Save plot
ggsave("mortality_rate_renal_disease.png",
       plot = p,
       width = 7,
       height = 5)
