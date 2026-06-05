# Project 4: Length of Stay and Mortality in Heart Failure Patients

# Load required package
library(ggplot2)

# Import dataset
hf <- read.csv("simulated HF mort data for GMPH (1K) final.csv")

# 1. Summary of length of stay
summary(hf$los)

# 2. Mean length of stay by mortality status
aggregate(los ~ death, data = hf, mean)

# 3. Standard deviation of length of stay by mortality status
aggregate(los ~ death, data = hf, sd)

# 4. Welch Two Sample t-test
t.test(los ~ death, data = hf)

# 5. Boxplot visualization
p <- ggplot(hf,
            aes(x = factor(death),
                y = los,
                fill = factor(death))) +
  geom_boxplot() +
  labs(
    title = "Length of Stay by Mortality Status",
    subtitle = "Mean LOS: 9.15 vs 12.45 days (p < 0.001)",
    x = "Mortality Status",
    y = "Length of Stay (days)"
  ) +
  scale_x_discrete(labels = c("Survived", "Died")) +
  scale_fill_manual(values = c("#4E79A7", "#E15759")) +
  theme_minimal() +
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(size = 11)
  )

print(p)

# 6. Save plot
ggsave("length_of_stay_mortality_boxplot.png",
       plot = p,
       width = 7,
       height = 5)
