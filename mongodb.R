library(ggplot2)
library(dplyr)
library(mongolite)
library(lubridate)
library(gridExtra)
require(data.table)



#loading the data-H1b Visa Petitions Data Set
h1b=data.table::fread("C:/Users/hp/Downloads/h1b_kaggle.csv")
names(h1b)#names of the columns

#Now let's remove spaces in the column names to avoid any problems when we query it from MongoDB.

names(h1b) = gsub(" ","",names(h1b)) 
names(h1b)


#Creating a Mongodb collection which is a collection of JSON documents in key-value pairs

my_collection<-mongo(collection = "h1b", db="VisaDb")

#inserting data to the database VisaDb
my_collection$insert(h1b)

#Counting the no of obsv in dataset
my_collection$count()


#performing a Query and Retriving Data



