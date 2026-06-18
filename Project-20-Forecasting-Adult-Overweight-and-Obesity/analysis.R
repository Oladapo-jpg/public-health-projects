# Load packages
library(readxl)
library(dplyr)
library(ggplot2)

# Import dataset
obesity <- read_excel("treand 2.xlsx")

# Prepare data
obesity_forecast <- obesity %>%
  mutate(Year = 2016:2025) %>%
  select(Year, Value)

# Fit regression model
obesity_model <- lm(Value ~ Year, data = obesity_forecast)

summary(obesity_model)

# Create forecast years
future_years <- data.frame(
  Year = 2026:2035
)

# Generate forecasts
future_years$Value <- predict(
  obesity_model,
  newdata = future_years
)

future_years$Type <- "Forecast"

historical <- obesity_forecast %>%
  mutate(Type = "Observed")

combined <- bind_rows(
  historical,
  future_years
)

# Plot
forecast_plot <- ggplot(
  combined,
  aes(x = Year,
      y = Value,
      colour = Type)
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  geom_vline(
    xintercept = 2025,
    linetype = "dashed"
  ) +
  labs(
    title = "Observed and Forecast Adult Overweight and Obesity Prevalence in England",
    subtitle = "Forecast based on linear regression model (2026–2035)",
    x = "Year",
    y = "Prevalence (%)"
  ) +
  theme_minimal()

print(forecast_plot)

# Save figure
ggsave(
  "obesity_forecast_england.png",
  plot = forecast_plot,
  width = 10,
  height = 6,
  dpi = 300
)
