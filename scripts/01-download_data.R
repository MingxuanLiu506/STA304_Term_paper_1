#### Preamble ####
# Purpose: Downloads and saves the data from opendatatoronto package and 
# stores the dataset for inclusion in the primary paper.
# Author: Mingxuan Liu
# Date: 09-21-2024
# Contact: mingxuan.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install the opendatatoronto and tidyverse packages.


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

packages <- list_packages(500)
# Display the list of available packages
packages


#### Download data ####
packages <- list_packages(500)
# Display the list of available packages
packages

crime_rates_packages <- search_packages("Neighbourhood Crime Rates")
crime_rates_packages
# Retrieve a list of all resources (datasets) available within the found package
crime_rates_resources <- crime_rates_packages %>%
  list_package_resources()
# Display the list of resources available in the "Neighbourhood Crime Rates" package
crime_rates_resources

# Download the .csv dataset
crime_rates_statistics <- crime_rates_resources[8,] %>%
  get_resource()

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
crime_rates_statistics
write_csv(crime_rates_statistics,"/Users/liumingxuan/Desktop/STA304 Term Paper 1/data/raw_data.csv")
         
