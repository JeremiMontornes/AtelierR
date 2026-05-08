library(dplyr)
library(ggplot2)
library(fixest)

economy <- read.csv("data/sample_economy.csv")

analysis_data <- economy |>
  filter(country %in% c("France", "Germany")) |>
  mutate(real_wage = wage / price_index * 100)

country_year <- analysis_data |>
  group_by(country, year) |>
  summarise(mean_real_wage = mean(real_wage), .groups = "drop")

print(country_year)

p <- ggplot(country_year, aes(x = year, y = mean_real_wage, color = country)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  labs(x = NULL, y = "Average real wage", color = NULL) +
  theme_minimal(base_size = 13)

if (interactive()) {
  print(p)
}

model <- feols(real_wage ~ employment | country + year, data = analysis_data)
print(etable(model))
