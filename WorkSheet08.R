#Changing working directory
setwd("C:/Users/yasir/Downloads")

#load the data
dataset <- read.table("Forest.txt", header = TRUE, sep = ",")
#display dataset
fix(dataset)

#attach the dataset
attach(dataset)

#summary of the dataset
#Compactly display the internal structure of an R object, a diagnostic function and an alternative to summary (and to some extent, dput). Ideally, only one line for each ‘basic’ structure is displayed. It is especially well suited to compactly display the (abbreviated) contents of (possibly nested) lists. The idea is to give reasonable output for any R object. It calls args for (non-primitive) function objects.
str(dataset)
?str

#maximum windspeed
max(wind)

#minimum
min(wind)

#five number summary of wind
summary(wind)

#boxplot for wind
?boxplot
boxplot(wind, horizontal = TRUE, pch=16)

#median of temperature
median(temp)

#mean and the sd of wind
mean(wind)
sd(wind)

#Interquatile range
IQR(wind)

#two way table day and month
tdable <- table(day, month)
tdable

#average temperatue in month sep
mean(temp[month=='sep'])
