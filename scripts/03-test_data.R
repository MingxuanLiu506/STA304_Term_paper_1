#### Preamble ####
# Purpose: Test these data to be true and valid
# Author: Mingxuan Liu
# Date: 09-21-2024
# Contact: mingxuan.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".


#### Workspace setup ####
library(tidyverse)

#### Test raw data  ####
# Load the data
crime_rates_statistics <- read.csv("/Users/liumingxuan/Desktop/STA304 Term Paper 1/data/raw_data.csv")

# Select a column (e.g., "AUTOTHEFT_RATE_2015") and check if all values are >= 0
column_name <- "AUTOTHEFT_RATE_2015"
if (all(crime_rates_statistics[[column_name]] >= 0, na.rm = TRUE)) {
  print("All non-missing values are greater than or equal to 0")
} else {
  print("Some values are less than 0")
}

#### Test clean data ####
selected_columns <- read_csv("/Users/liumingxuan/Desktop/STA304 Term Paper 1/data/analysis_data.csv")
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
