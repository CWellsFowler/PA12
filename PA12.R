# Chatoya Wells-Fowler
# COP2073C 
# 8/9/2026
# use the ggplot2 package to create a line chart

install.packages("ggplot2")

library(ggplot2)

head(mtcars)

mtcars$cyl <- factor(mtcars$cyl)

p <- ggplot(
  mtcars,
  aes(
    x = disp,
    y = mpg,
    group = cyl,
    color = cyl
  )
) +
  geom_line(alpha = 0.8) +
  labs(
    title = "Fuel Efficiency vs Engine Displacement",
    subtitle = "Grouped by Number of Cylinders",
    x = "Engine Displacement",
    y = "Miles per Gallon",
    color = "Number of Cylinders",
    caption = "Source: mtcars dataset"
  ) +
  scale_color_discrete(
    name = "Number of Cylinders"
  ) +
  theme_minimal() +
  theme(
    legend.position = "bottom",
    plot.title = element_text(
      hjust = 0.5,
      face = "bold"
    ),
    plot.subtitle = element_text(
      hjust = 0.5
    )
  )
print(p)

ggsave(
  "fuel_efficiency_plot.png",
  plot = p,
  width = 8,
  height = 6
)
