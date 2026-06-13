# =====================================================
# Project 12:
# Regional Educational Attainment Inequalities
# by Disability Status in England
# =====================================================

# Load required packages
library(readxl)
library(ggplot2)

# Import Table 7 from ONS workbook
table7 <- read_excel(
  "Book3 table 7.xlsx",
  skip = 5
)

# Rename columns for easier analysis
# Original meanings are unchanged
names(table7) <- c(
  "DisabilityStatus",
  "Region",
  "Qualification",
  "Estimate2019",
  "Sample2019",
  "Estimate2020",
  "Sample2020",
  "Estimate2021",
  "Sample2021"
)

# Filter to Degree or equivalent qualification only
degree_region <- subset(
  table7,
  Qualification == "Degree or equivalent"
)

# Clean disability status labels
degree_region$DisabilityStatus[
  degree_region$DisabilityStatus == "Disabled people"
] <- "Disabled"

degree_region$DisabilityStatus[
  degree_region$DisabilityStatus == "Non-disabled people"
] <- "Non-disabled"

# View cleaned data
head(degree_region)
tail(degree_region)

# =====================================================
# Figure 1: Degree-Level Educational Attainment by Region
# =====================================================

p1 <- ggplot(
  degree_region,
  aes(
    x = Region,
    y = Estimate2021,
    fill = DisabilityStatus
  )
) +
  geom_col(position = "dodge") +
  labs(
    title = "Degree-Level Educational Attainment by Region",
    subtitle = "England, 2020/21",
    x = "Region",
    y = "Percentage with Degree or Equivalent",
    fill = "Group"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(
      angle = 45,
      hjust = 1
    )
  )

print(p1)

ggsave(
  "regional_degree_attainment.png",
  plot = p1,
  width = 10,
  height = 6
)

# =====================================================
# Figure 2: Disability-Related Educational Attainment Gap
# =====================================================

# Create separate datasets
disabled <- subset(
  degree_region,
  DisabilityStatus == "Disabled"
)

nondisabled <- subset(
  degree_region,
  DisabilityStatus == "Non-disabled"
)

# Calculate attainment gap
gap_data <- data.frame(
  Region = disabled$Region,
  Gap = nondisabled$Estimate2021 - disabled$Estimate2021
)

# Rank regions by size of gap
gap_data <- gap_data[
  order(gap_data$Gap),
]

# View gap data
gap_data

# Plot attainment gap
p2 <- ggplot(
  gap_data,
  aes(
    x = reorder(Region, Gap),
    y = Gap
  )
) +
  geom_col() +
  labs(
    title = "Disability-Related Educational Attainment Gap by Region",
    subtitle = "England, 2020/21",
    x = "Region",
    y = "Attainment Gap (Percentage Points)"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(
      angle = 45,
      hjust = 1
    )
  )

print(p2)

ggsave(
  "regional_attainment_gap.png",
  plot = p2,
  width = 10,
  height = 6
)

# =====================================================
# Key summary outputs
# =====================================================

# Sort regions by highest degree attainment
degree_region[
  order(-degree_region$Estimate2021),
  c("DisabilityStatus", "Region", "Estimate2021")
]

# Sort regions by largest disability-related attainment gap
gap_data[
  order(-gap_data$Gap),
]
