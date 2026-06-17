# Project 16: Trends in Adult Obesity Prevalence in England (1993–2024)

# ----------------------------------------
# Load Packages
# ----------------------------------------

library(readxl)
library(dplyr)
library(ggplot2)

# ----------------------------------------
# Import Dataset
# ----------------------------------------

obesity <- read_excel(
  "adult_obesity_england.xlsx",
  sheet = "obesity trends"
)

# Inspect data

names(obesity)
str(obesity)

# ----------------------------------------
# Prepare Data
# ----------------------------------------

obesity_clean <- obesity %>%
  filter(!is.na(Value))

# ----------------------------------------
# Descriptive Statistics
# ----------------------------------------

summary(obesity_clean$Value)

obesity_clean %>%
  summarise(
    Mean = mean(Value),
    Median = median(Value),
    SD = sd(Value)
  )

# ----------------------------------------
# Minimum and Maximum Prevalence
# ----------------------------------------

min(obesity_clean$Value)

max(obesity_clean$Value)

obesity_clean %>%
  filter(`Time period` == 2024)

# ----------------------------------------
# Calculate Change Over Time
# ----------------------------------------

start_value <- 14.9

end_value <- 29.9056

increase <- end_value - start_value

relative_increase <- (increase / start_value) * 100

increase

relative_increase

# ----------------------------------------
# Trend Plot
# ----------------------------------------

obesity_plot <- ggplot(
  obesity_clean,
  aes(
    x = `Time period`,
    y = Value
  )
) +
  geom_line(linewidth = 1) +
  geom_point() +
  labs(
    title = "Adult Obesity Prevalence in England (1993–2024)",
    x = "Year",
    y = "Obesity Prevalence (%)"
  ) +
  theme_minimal()

print(obesity_plot)

# ----------------------------------------
# Save Figure
# ----------------------------------------

ggsave(
  "obesity_trend_england.png",
  plot = obesity_plot,
  width = 10,
  height = 6,
  dpi = 300
)
