# Project 8: Trends in Personal Well-being in the UK (2011/12–2022/23)

# Load required packages
library(ggplot2)
library(tidyr)

# Create dataset
wellbeing <- data.frame(
  Year = c("2011/12","2012/13","2013/14","2014/15","2015/16",
           "2016/17","2017/18","2018/19","2019/20","2020/21",
           "2021/22","2022/23"),

  LifeSatisfaction = c(7.42,7.46,7.51,7.61,7.65,7.68,
                       7.69,7.71,7.66,7.39,7.54,7.45),

  Worthwhile = c(7.67,7.70,7.74,7.82,7.84,7.86,
                 7.88,7.89,7.86,7.71,7.77,7.73),

  Happiness = c(7.29,7.30,7.39,7.46,7.48,7.51,
                7.52,7.56,7.47,7.32,7.45,7.39),

  Anxiety = c(3.13,3.03,2.92,2.86,2.87,2.90,
              2.89,2.87,3.05,3.31,3.12,3.23)
)

# View dataset
wellbeing

# Summary statistics
summary(wellbeing)

# Convert data from wide to long format
wellbeing_long <- pivot_longer(
  wellbeing,
  cols = c(LifeSatisfaction, Worthwhile, Happiness, Anxiety),
  names_to = "Measure",
  values_to = "Score"
)

# View transformed data
head(wellbeing_long)

# Create trend plot
p <- ggplot(
  wellbeing_long,
  aes(x = Year,
      y = Score,
      group = Measure,
      color = Measure)
) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  labs(
    title = "Personal Well-being in the UK",
    subtitle = "Trends from 2011/12 to 2022/23",
    x = "Year",
    y = "Average Score",
    color = "Measure"
  ) +
  scale_y_continuous(limits = c(2, 8)) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(
      angle = 45,
      hjust = 1
    )
  )

# Display plot
print(p)

# Save plot
ggsave(
  "wellbeing_trends_uk.png",
  plot = p,
  width = 8,
  height = 5
)
