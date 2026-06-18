# Project 18: Healthy Life Expectancy Inequalities by Deprivation in England

# ----------------------------------------
# Load Packages
# ----------------------------------------

library(readxl)
library(dplyr)
library(ggplot2)

# ----------------------------------------
# Import Dataset
# ----------------------------------------

imd_hle <- read_excel(
  "healthy_life_expectancy_by_deprivation_england.xlsx",
  sheet = "Table 1"
)

# ----------------------------------------
# Clean Dataset
# ----------------------------------------

hle_imd <- imd_hle[-1, ]

names(hle_imd)[1:13] <- c(
  "Period",
  "Decile",
  "Sex",
  "SexCode",
  "AgeGroup",
  "AgeBand",
  "LE",
  "LE_LCI",
  "LE_UCI",
  "HLE",
  "HLE_LCI",
  "HLE_UCI",
  "Proportion"
)

# ----------------------------------------
# Prepare Analysis Dataset
# ----------------------------------------

hle_birth <- hle_imd %>%
  filter(AgeGroup == "<1")

hle_latest <- hle_birth %>%
  filter(Period == "2017-2019")

hle_latest <- hle_latest %>%
  mutate(
    Decile = as.numeric(Decile),
    HLE = as.numeric(HLE)
  )

# ----------------------------------------
# Check Dataset
# ----------------------------------------

table(hle_latest$Sex)
table(hle_latest$Decile)

# ----------------------------------------
# Calculate HLE Gap by Sex
# ----------------------------------------

male_hle <- hle_latest %>%
  filter(Sex == "Male")

female_hle <- hle_latest %>%
  filter(Sex == "Female")

male_gap <- male_hle %>%
  summarise(
    Most_Deprived = HLE[Decile == 1],
    Least_Deprived = HLE[Decile == 10],
    Gap = Least_Deprived - Most_Deprived
  )

female_gap <- female_hle %>%
  summarise(
    Most_Deprived = HLE[Decile == 1],
    Least_Deprived = HLE[Decile == 10],
    Gap = Least_Deprived - Most_Deprived
  )

male_gap
female_gap

# ----------------------------------------
# Create Figure
# ----------------------------------------

hle_plot <- ggplot(
  hle_latest,
  aes(
    x = Decile,
    y = HLE,
    colour = Sex,
    group = Sex
  )
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Healthy Life Expectancy by Deprivation Decile in England (2017–2019)",
    x = "Deprivation Decile",
    y = "Healthy Life Expectancy (Years)",
    colour = "Sex"
  ) +
  theme_minimal()

print(hle_plot)

# ----------------------------------------
# Save Figure
# ----------------------------------------

ggsave(
  "hle_deprivation_deciles_2017_2019.png",
  plot = hle_plot,
  width = 10,
  height = 6,
  dpi = 300
)
