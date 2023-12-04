# Script Name: data1.R
# Author: Qifei Cui
# Last Edited: 2023-11-30
# Description: This script is used for generating raw dataset.

# install.packages(c("devtools"))
devtools::install_github("ldurazo/kaggler", force = TRUE)
library(tidyverse)
library(dplyr)
library(readr)
library(kaggler)


# check file structure
root_dir <- rprojroot::find_rstudio_root_file()
setwd(root_dir)
if (!dir.exists("./data")){dir.create("./data")} # create "./data" is not exist and set up data directory
if (!dir.exists("./result")){dir.create("./result")} # create "./data" is not exist and set up data directory
data_dir <- file.path(root_dir, "data")
scripts_dir <- file.path(root_dir, "scripts")
result_dir <- file.path(root_dir, "result")

# setting up kaggle API
kgl_auth(creds_file = './scripts/kaggle.json')

# download and import
response <- kgl_datasets_download_all(owner_dataset = "sumanthvrao/daily-climate-time-series-data")
download.file(response[["url"]], "./data/temp.zip", mode="wb")
unzip("data/temp.zip", exdir = "./data/", overwrite = TRUE)
data_file <- "./data/confirmed_global.csv"
data <- read_csv(data_file)