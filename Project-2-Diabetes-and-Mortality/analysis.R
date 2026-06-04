library(ggplot2)

hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

table(hf$diabetes)
table(hf$death)

diabetes_death_table <- table(hf$diabetes, hf$death)
diabetes_death_table

prop.table(diabetes_death_table, margin = 1) * 100

chisq.test(diabetes_death_table)

a <- 129
b <- 154
c <- 363
d <- 354

odds_ratio <- (a * d) / (b * c)
odds_ratio

se_log_or <- sqrt((1/a) + (1/b) + (1/c) + (1/d))

lower_ci <- exp(log(odds_ratio) - 1.96 * se_log_or)
upper_ci <- exp(log(odds_ratio) + 1.96 * se_log_or)

c(lower_ci, upper_ci)

mortality_rate <- data.frame(
  Diabetes = c("Diabetes", "No Diabetes"),
  MortalityRate = c(45.6, 50.6)
)

p <- ggplot(mortality_rate,
            aes(x = Diabetes, y = MortalityRate)) +
  geom_col(fill = "#4E79A7") +
  geom_text(aes(label = MortalityRate),
            vjust = -0.5,
            size = 5) +
  labs(
    title = "Mortality Rate by Diabetes Status",
    subtitle = "No statistically significant difference (p = 0.172)",
    x = "Diabetes Status",
    y = "Mortality Rate (%)"
  ) +
  ylim(0, 60) +
  theme_minimal()

print(p)

ggsave("mortality_rate_diabetes.png", plot = p, width = 7, height = 5)
