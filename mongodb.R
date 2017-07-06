library(ggplot2)
library(dplyr)
library(mongolite)
library(lubridate)
library(gridExtra)
require(data.table)



#loading the data-H1b Visa Petitions Data Set
h1b=data.table::fread("C:/Users/hp/Downloads/h1b_kaggle.csv")

