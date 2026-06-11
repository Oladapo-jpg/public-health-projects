# Project 3: Deprivation and Mortality in Heart Failure Patients

# Load required package
library(ggplot2)

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# 1. Explore deprivation quintile and mortality variables
table(hf$quintile)
table(hf$death)

# 2. Create contingency table
quintile_death_table_all <- table(hf$quintile, hf$death)
quintile_death_table_all

# 3. Calculate mortality rates across all quintiles
prop.table(quintile_death_table_all, margin = 1) * 100

# 4. Remove quintile 0 because it contains very few observations
hf2 <- subset(hf, quintile != 0)

# 5. Create revised contingency table
quintile_death_table <- table(hf2$quintile, hf2$death)
quintile_death_table

# 6. Calculate mortality rates after removing quintile 0
prop.table(quintile_death_table, margin = 1) * 100

# 7. Pearson's Chi-square test
chisq.test(quintile_death_table)

# 8. Create data for visualization
mortality_quintile <- data.frame(
  Quintile = c("1", "2", "3", "4", "5"),
  MortalityRate = c(56.52, 45.85, 50.24, 47.27, 49.54)
)

# 9. Plot mortality rate by deprivation quintile
p <- ggplot(mortality_quintile,
            aes(x = Quintile, y = MortalityRate)) +
  geom_col(fill = "#4E79A7") +
  geom_text(aes(label = round(MortalityRate, 1)),
            vjust = -0.5,
            size = 5) +
  ylim(0, 65) +
  labs(
    title = "Mortality Rate by Deprivation Quintile",
    subtitle = "No statistically significant association (p = 0.368)",
    x = "Deprivation Quintile",
    y = "Mortality Rate (%)"
  ) +
  theme_minimal()

print(p)

# 10. Save plot
ggsave("mortality_deprivation_quintile.png",
       plot = p,
       width = 7,
       height = 5)
