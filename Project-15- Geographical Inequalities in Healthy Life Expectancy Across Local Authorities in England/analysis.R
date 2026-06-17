# Project 15: Geographical Inequalities in Healthy Life Expectancy
# Across Local Authorities in England

# --------------------------------------------------
# Load Packages
# --------------------------------------------------

library(readxl)
library(dplyr)
library(ggplot2)

# --------------------------------------------------
# Import Dataset
# --------------------------------------------------

hle <- read_excel(
  "healthylifeexpectancyuk.xlsx",
  sheet = 1
)

# Inspect data
names(hle)
str(hle)

# --------------------------------------------------
# Filter Data
# Healthy Life Expectancy at Birth
# England, Local Authorities, 2022–2024
# --------------------------------------------------

hle_england_birth <- hle %>%
  filter(
    Period == "2022 to 2024",
    Country == "England",
    `Area type` == "Local Areas",
    `Age group` == "<1"
  )

# Check sample size

nrow(hle_england_birth)

table(hle_england_birth$Sex)

# --------------------------------------------------
# Female Analysis
# --------------------------------------------------

female_hle <- hle_england_birth %>%
  filter(Sex == "Female")

summary(female_hle$HLE)

top10_female <- female_hle %>%
  arrange(desc(HLE)) %>%
  slice(1:10)

bottom10_female <- female_hle %>%
  arrange(HLE) %>%
  slice(1:10)

top10_female[, c("Area name", "HLE")]
bottom10_female[, c("Area name", "HLE")]

# --------------------------------------------------
# Male Analysis
# --------------------------------------------------

male_hle <- hle_england_birth %>%
  filter(Sex == "Male")

summary(male_hle$HLE)

top10_male <- male_hle %>%
  arrange(desc(HLE)) %>%
  slice(1:10)

bottom10_male <- male_hle %>%
  arrange(HLE) %>%
  slice(1:10)

top10_male[, c("Area name", "HLE")]
bottom10_male[, c("Area name", "HLE")]

# --------------------------------------------------
# Female Figure
# --------------------------------------------------

plot_data_female <- bind_rows(
  top10_female %>% mutate(Group = "Highest"),
  bottom10_female %>% mutate(Group = "Lowest")
)

female_plot <- ggplot(
  plot_data_female,
  aes(
    x = reorder(`Area name`, HLE),
    y = HLE,
    fill = Group
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Highest and Lowest Female Healthy Life Expectancy in England (2022–2024)",
    x = "Local Authority",
    y = "Healthy Life Expectancy (Years)"
  ) +
  theme_minimal()

print(female_plot)

ggsave(
  "female_hle_top_bottom.png",
  plot = female_plot,
  width = 10,
  height = 7,
  dpi = 300
)

# --------------------------------------------------
# Male Figure
# --------------------------------------------------

plot_data_male <- bind_rows(
  top10_male %>% mutate(Group = "Highest"),
  bottom10_male %>% mutate(Group = "Lowest")
)

male_plot <- ggplot(
  plot_data_male,
  aes(
    x = reorder(`Area name`, HLE),
    y = HLE,
    fill = Group
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Highest and Lowest Male Healthy Life Expectancy in England (2022–2024)",
    x = "Local Authority",
    y = "Healthy Life Expectancy (Years)"
  ) +
  theme_minimal()

print(male_plot)

ggsave(
  "male_hle_top_bottom.png",
  plot = male_plot,
  width = 10,
  height = 7,
  dpi = 300
)
