# Project 10: Self-Harm Rates by Sexual Orientation
# England and Wales, 2021–2023

# Load required packages
library(readxl)
library(ggplot2)

# Import dataset
selfharm <- read_excel(
  "datadownloadrr.xlsx",
  skip = 9
)

# View column names and data
names(selfharm)
head(selfharm, 10)

# Create a cleaner dataset for plotting
plot_data <- subset(
  selfharm,
  !`Sexual orientation` %in%
    c("Total", "Other sexual orientation")
)

# Shorten sexual orientation labels
plot_data$SexualOrientation <- factor(
  plot_data$`Sexual orientation`,
  levels = c(
    "Straight or Heterosexual",
    "LGB+",
    "Bisexual",
    "Gay or Lesbian"
  ),
  labels = c(
    "Straight",
    "LGB+",
    "Bisexual",
    "Gay/Lesbian"
  )
)

# Plot self-harm rates with 95% confidence intervals
p <- ggplot(
  plot_data,
  aes(
    x = `SexualOrientation`,
    y = `Age-standardised rate`,
    fill = Sex
  )
) +
  geom_col(
    position = position_dodge(width = 0.8)
  ) +
  geom_errorbar(
    aes(
      ymin = `Age-standardised rate, 95% lower confidence limit`,
      ymax = `Age-standardised rate, 95% upper confidence limit`
    ),
    position = position_dodge(width = 0.8),
    width = 0.2
  ) +
  labs(
    title = "Self-Harm Rates by Sexual Orientation",
    subtitle = "England and Wales, 2021–2023",
    x = "Sexual Orientation",
    y = "Age-standardised Rate",
    fill = "Sex"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(
      angle = 45,
      hjust = 1
    )
  )

print(p)

# Save plot
ggsave(
  "selfharm_rates_sexual_orientation.png",
  plot = p,
  width = 8,
  height = 5
)
