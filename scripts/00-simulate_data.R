#### Preamble ####
# Purpose: Simulate data sets about crime rates in various regions and 
# test these data to be true and valid
# Author: Mingxuan Liu
# Date: 09-21-2024
# Contact: mingxuan.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install tidyverse packages



#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# Set seed for reproducibility
set.seed(123)

# Define the number of observations (e.g., 100 areas)
n <- 100

# Simulate AREA_NAME as a categorical variable
area_names <- paste("Area", 1:n)

# Simulate THEFTOVER_RATE for years 2014-2023 using normal distribution
theftover_rate_2014 <- rnorm(n, mean = 50, sd = 20)
theftover_rate_2015 <- rnorm(n, mean = 55, sd = 22)
theftover_rate_2016 <- rnorm(n, mean = 60, sd = 25)
theftover_rate_2017 <- rnorm(n, mean = 65, sd = 30)
theftover_rate_2018 <- rnorm(n, mean = 70, sd = 35)
theftover_rate_2019 <- rnorm(n, mean = 75, sd = 40)
theftover_rate_2020 <- rnorm(n, mean = 80, sd = 45)
theftover_rate_2021 <- rnorm(n, mean = 85, sd = 50)
theftover_rate_2022 <- rnorm(n, mean = 90, sd = 55)
theftover_rate_2023 <- rnorm(n, mean = 95, sd = 60)

# Simulate POPULATION_2023 using normal distribution
population_2023 <- rnorm(n, mean = 20000, sd = 5000)

# Simulate ASSAULT_2023 using Poisson distribution
assault_rate_2023 <- rpois(n, lambda = 150)

# Combine all the simulated data into a data frame
simulated_data <- data.frame(
  AREA_NAME = area_names,
  THEFTOVER_RATE_2014 = theftover_rate_2014,
  THEFTOVER_RATE_2015 = theftover_rate_2015,
  THEFTOVER_RATE_2016 = theftover_rate_2016,
  THEFTOVER_RATE_2017 = theftover_rate_2017,
  THEFTOVER_RATE_2018 = theftover_rate_2018,
  THEFTOVER_RATE_2019 = theftover_rate_2019,
  THEFTOVER_RATE_2020 = theftover_rate_2020,
  THEFTOVER_RATE_2021 = theftover_rate_2021,
  THEFTOVER_RATE_2022 = theftover_rate_2022,
  THEFTOVER_RATE_2023 = theftover_rate_2023,
  POPULATION_2023 = population_2023,
  ASSAULT_RATE_2023 = assault_rate_2023
)

# View the first few rows of the simulated dataset
head(simulated_data)

# Load necessary library
library(ggplot2)

# Simulate the dataset as previously defined
set.seed(123)
n <- 100
area_names <- paste("Area", 1:n)
theftover_rate_2014 <- rnorm(n, mean = 50, sd = 20)
theftover_rate_2015 <- rnorm(n, mean = 55, sd = 22)
theftover_rate_2016 <- rnorm(n, mean = 60, sd = 25)
theftover_rate_2017 <- rnorm(n, mean = 65, sd = 30)
theftover_rate_2018 <- rnorm(n, mean = 70, sd = 35)
theftover_rate_2019 <- rnorm(n, mean = 75, sd = 40)
theftover_rate_2020 <- rnorm(n, mean = 80, sd = 45)
theftover_rate_2021 <- rnorm(n, mean = 85, sd = 50)
theftover_rate_2022 <- rnorm(n, mean = 90, sd = 55)
theftover_rate_2023 <- rnorm(n, mean = 95, sd = 60)
population_2023 <- rnorm(n, mean = 20000, sd = 5000)
assault_rate_2023 <- rpois(n, lambda = 150)

# Create a data frame
simulated_data <- data.frame(
  AREA_NAME = area_names,
  THEFTOVER_RATE_2014 = theftover_rate_2014,
  THEFTOVER_RATE_2015 = theftover_rate_2015,
  THEFTOVER_RATE_2016 = theftover_rate_2016,
  THEFTOVER_RATE_2017 = theftover_rate_2017,
  THEFTOVER_RATE_2018 = theftover_rate_2018,
  THEFTOVER_RATE_2019 = theftover_rate_2019,
  THEFTOVER_RATE_2020 = theftover_rate_2020,
  THEFTOVER_RATE_2021 = theftover_rate_2021,
  THEFTOVER_RATE_2022 = theftover_rate_2022,
  THEFTOVER_RATE_2023 = theftover_rate_2023,
  POPULATION_2023 = population_2023,
  ASSAULT_RATE_2023 = assault_rate_2023
)

# Simulate the dataset as previously defined
set.seed(123)
n <- 100
area_names <- paste("Area", 1:n)
theftover_rate_2014 <- rnorm(n, mean = 50, sd = 20)
theftover_rate_2015 <- rnorm(n, mean = 55, sd = 22)
theftover_rate_2016 <- rnorm(n, mean = 60, sd = 25)
theftover_rate_2017 <- rnorm(n, mean = 65, sd = 30)
theftover_rate_2018 <- rnorm(n, mean = 70, sd = 35)
theftover_rate_2019 <- rnorm(n, mean = 75, sd = 40)
theftover_rate_2020 <- rnorm(n, mean = 80, sd = 45)
theftover_rate_2021 <- rnorm(n, mean = 85, sd = 50)
theftover_rate_2022 <- rnorm(n, mean = 90, sd = 55)
theftover_rate_2023 <- rnorm(n, mean = 95, sd = 60)
population_2023 <- rnorm(n, mean = 20000, sd = 5000)
assault_rate_2023 <- rpois(n, lambda = 150)

# Create a data frame
simulated_data <- data.frame(
  AREA_NAME = area_names,
  THEFTOVER_RATE_2014 = theftover_rate_2014,
  THEFTOVER_RATE_2015 = theftover_rate_2015,
  THEFTOVER_RATE_2016 = theftover_rate_2016,
  THEFTOVER_RATE_2017 = theftover_rate_2017,
  THEFTOVER_RATE_2018 = theftover_rate_2018,
  THEFTOVER_RATE_2019 = theftover_rate_2019,
  THEFTOVER_RATE_2020 = theftover_rate_2020,
  THEFTOVER_RATE_2021 = theftover_rate_2021,
  THEFTOVER_RATE_2022 = theftover_rate_2022,
  THEFTOVER_RATE_2023 = theftover_rate_2023,
  POPULATION_2023 = population_2023,
  ASSAULT_RATE_2023 = assault_rate_2023
)

# Define the columns to test
cols_to_test <- c("THEFTOVER_RATE_2014", "THEFTOVER_RATE_2015", "THEFTOVER_RATE_2016", 
                  "THEFTOVER_RATE_2017", "THEFTOVER_RATE_2018", "THEFTOVER_RATE_2019",
                  "THEFTOVER_RATE_2020", "THEFTOVER_RATE_2021", "THEFTOVER_RATE_2022", 
                  "THEFTOVER_RATE_2023", "POPULATION_2023", "ASSAULT_RATE_2023")

# Test if values in each column are greater than 0
for (col in cols_to_test) {
  greater_than_zero <- simulated_data[[col]] > 0
  count_greater_than_zero <- sum(greater_than_zero)
  proportion_greater_than_zero <- mean(greater_than_zero)
  
  print(paste("Column:", col))
  print(paste("Number of values greater than 0:", count_greater_than_zero))
  print(paste("Proportion of values greater than 0:", proportion_greater_than_zero))
  print("----")
}

