# Project 17: Socioeconomic Inequalities in Smoking Prevalence in England (2016)

# ----------------------------------------

# Load Packages

# ----------------------------------------

library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)

# ----------------------------------------

# Import Dataset

# ----------------------------------------

smoke <- read_excel(
"smoking_deprivation_england.xlsx",
skip = 15
)

# ----------------------------------------

# Prepare Data

# ----------------------------------------

smoke <- smoke %>%
fill(Sex)

# Keep Persons only

smoke_persons <- smoke %>%
filter(Sex == "Persons") %>%
select(
Decile,
Smoking_Prevalence = `%...3`
)

# ----------------------------------------

# Inspect Dataset

# ----------------------------------------

head(smoke_persons)

summary(smoke_persons$Smoking_Prevalence)

# ----------------------------------------

# Calculate Inequality Gap

# ----------------------------------------

most_deprived <- smoke_persons %>%
filter(Decile == 1) %>%
pull(Smoking_Prevalence)

least_deprived <- smoke_persons %>%
filter(Decile == 10) %>%
pull(Smoking_Prevalence)

difference <- most_deprived - least_deprived

ratio <- most_deprived / least_deprived

difference

ratio

# ----------------------------------------

# Create Figure

# ----------------------------------------

smoking_plot <- ggplot(
smoke_persons,
aes(
x = factor(Decile),
y = Smoking_Prevalence
)
) +
geom_col() +
labs(
title = "Smoking Prevalence by Deprivation Decile in England (2016)",
x = "Deprivation Decile",
y = "Smoking Prevalence (%)"
) +
theme_minimal()

print(smoking_plot)

# ----------------------------------------

# Save Figure

# ----------------------------------------

ggsave(
"smoking_deprivation_2016.png",
plot = smoking_plot,
width = 10,
height = 6,
dpi = 300
)
