# Project 4: Length of Stay and Mortality in Heart Failure Patients

library(ggplot2)

hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

summary(hf$los)

aggregate(los ~ death, data = hf, mean)
aggregate(los ~ death, data = hf, sd)

t.test(los ~ death, data = hf)

p <- ggplot(hf, aes(x = factor(death), y = los, fill = factor(death))) +
  geom_boxplot() +
  labs(
    title = "Length of Stay by Mortality Status",
    subtitle = "Non-survivors had significantly longer hospital stays (p < 0.001)",
    x = "Mortality Status",
    y = "Length of Stay (days)"
  ) +
  scale_x_discrete(labels = c("Survived", "Died")) +
  scale_fill_manual(values = c("#4E79A7", "#E15759")) +
  theme_minimal() +
  theme(legend.position = "none")

print(p)

ggsave("length_of_stay_mortality_boxplot.png",
       plot = p,
       width = 7,
       height = 5)
