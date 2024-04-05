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

url <- "https://fred.stlouisfed.org/graph/fredgraph.csv?bgcolor=%23e1e9f0&chart_type=line&drp=0&fo=open%20sans&graph_bgcolor=%23ffffff&height=450&mode=fred&recession_bars=on&txtcolor=%23444444&ts=12&tts=12&width=1318&nt=0&thu=0&trc=0&show_legend=yes&show_axis_titles=yes&show_tooltip=yes&id=IPG2211A2N&scale=left&cosd=1939-01-01&coed=2023-10-01&line_color=%234572a7&link_values=false&line_style=solid&mark_type=none&mw=3&lw=2&ost=-99999&oet=99999&mma=0&fml=a&fq=Monthly&fam=avg&fgst=lin&fgsnd=2020-02-01&line_index=1&transformation=lin&vintage_date=2023-12-09&revision_date=2023-12-09&nd=1939-01-01"
file <- "./data/IPG2211A2N.csv"

download.file(url, destfile = file, mode = "wb")
data_file <- "./data/Electric_Production.csv"
data <- read.csv(data_file, header = TRUE)


