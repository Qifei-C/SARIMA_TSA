# Script Name: data2.R
# Author: Qifei Cui
# Last Edited: 2023-11-30
# Description: This script is used for generating raw dataset.

# install.packages(c("devtools"))
library(tidyverse)
library(dplyr)
library(readr)

# check file structure
root_dir <- rprojroot::find_rstudio_root_file()
setwd(root_dir)
if (!dir.exists("./data")){dir.create("./data")} # create "./data" is not exist and set up data directory
if (!dir.exists("./result")){dir.create("./result")} # create "./data" is not exist and set up data directory
data_dir <- file.path(root_dir, "data")
scripts_dir <- file.path(root_dir, "scripts")
result_dir <- file.path(root_dir, "result")

url <- "https://archive.ics.uci.edu/static/public/235/individual+household+electric+power+consumption.zip"
file <- "./data/individual_household_electric_power_consumption.zip"

download.file(url, file, method="curl")
unzip(file, exdir = "~/data")
data_file <- "~/data/household_power_consumption.txt"
data <- read.table(data_file, sep=";", header=TRUE)

