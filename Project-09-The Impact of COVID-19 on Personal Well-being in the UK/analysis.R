# Project 9: The Impact of COVID-19 on Personal Well-being in the UK

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

# Create period variable

wellbeing$Period <- ifelse(
wellbeing$Year %in% c("2020/21","2021/22","2022/23"),
"COVID/Post-COVID",
"Pre-COVID"
)

# Calculate averages by period

aggregate(
cbind(
LifeSatisfaction,
Worthwhile,
Happiness,
Anxiety
) ~ Period,
data = wellbeing,
mean
)

# Create change dataset

changes <- data.frame(
Measure = c("Life Satisfaction",
"Worthwhile",
"Happiness",
"Anxiety"),

Change = c(
7.460000 - 7.598889,
7.736667 - 7.806667,
7.386667 - 7.442222,
3.220000 - 2.946667
)
)

# Create plot

p <- ggplot(changes,
aes(x = Measure,
y = Change)) +
geom_col() +
labs(
title = "Well-being Changes During COVID-19",
subtitle = "Compared with pre-COVID levels",
x = "Measure",
y = "Change in Score"
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
"covid_wellbeing_change.png",
plot = p,
width = 8,
height = 5
)
