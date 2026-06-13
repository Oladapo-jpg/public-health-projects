# Project 11: Educational Attainment Inequalities by Disability Status in the UK

library(readxl)
library(tidyr)
library(ggplot2)

# Import Table 1
education <- read_excel(
  "10012022disabilityandeducationreferencetables09022022152713.xlsx",
  sheet = "Table 1",
  skip = 5
)

# Rename key columns
names(education)[1] <- "Year"
names(education)[2] <- "Disabled_Degree"
names(education)[7] <- "Disabled_NoQual"
names(education)[8] <- "NonDisabled_Degree"
names(education)[13] <- "NonDisabled_NoQual"

# Remove unweighted sample row
education <- education[
  education$Year != "Unweighted sample 2020/21",
]

# Create short year labels
education$YearShort <- c(
  "2014", "2015", "2016", "2017",
  "2018", "2019", "2020", "2021"
)

# Figure 1: Degree-level attainment
degree_data <- education[, c("YearShort", "Disabled_Degree", "NonDisabled_Degree")]

degree_long <- pivot_longer(
  degree_data,
  cols = c(Disabled_Degree, NonDisabled_Degree),
  names_to = "Group",
  values_to = "DegreeRate"
)

degree_long$Group[degree_long$Group == "Disabled_Degree"] <- "Disabled"
degree_long$Group[degree_long$Group == "NonDisabled_Degree"] <- "Non-disabled"

p1 <- ggplot(
  degree_long,
  aes(x = YearShort, y = DegreeRate, color = Group, group = Group)
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Educational Attainment by Disability Status in the UK",
    subtitle = "UK adults aged 21–64, 2014–2021",
    x = "Year",
    y = "Percentage with Degree or Equivalent",
    color = "Group"
  ) +
  theme_minimal()

print(p1)

ggsave(
  "degree_attainment_disability.png",
  plot = p1,
  width = 8,
  height = 5
)

# Figure 2: No qualifications
noqual_data <- education[, c("YearShort", "Disabled_NoQual", "NonDisabled_NoQual")]

noqual_long <- pivot_longer(
  noqual_data,
  cols = c(Disabled_NoQual, NonDisabled_NoQual),
  names_to = "Group",
  values_to = "NoQualification"
)

noqual_long$Group[noqual_long$Group == "Disabled_NoQual"] <- "Disabled"
noqual_long$Group[noqual_long$Group == "NonDisabled_NoQual"] <- "Non-disabled"

p2 <- ggplot(
  noqual_long,
  aes(x = YearShort, y = NoQualification, color = Group, group = Group)
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 3) +
  labs(
    title = "Adults with No Qualifications by Disability Status",
    subtitle = "UK adults aged 21–64, 2014–2021",
    x = "Year",
    y = "Percentage with No Qualifications",
    color = "Group"
  ) +
  theme_minimal()

print(p2)

ggsave(
  "no_qualification_disability.png",
  plot = p2,
  width = 8,
  height = 5
)
