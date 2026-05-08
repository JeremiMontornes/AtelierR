wages <- c(31, 34, 37, 40)
mean_wage <- mean(wages)

df <- data.frame(
  year = 2020:2023,
  wage = wages,
  price_index = c(100, 102, 106, 110)
)

df$real_wage <- df$wage / df$price_index * 100

print(mean_wage)
print(df)
