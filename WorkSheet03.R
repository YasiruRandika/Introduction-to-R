#Functions
function1 <- function(a, b) {
  print(a + b)
}

function1(1, 2)

#Import File
data1 <- read.table("dataSet.txt", header = TRUE, sep = ",")
data1

#get dataset in spreadsheet format
fix(data1)

#import CSV File
data2 <- read.csv("dataSet.csv", header = TRUE, sep = ",")
data2

#export dataset
height <- c(12, 13, 11)
weight <- c(34, 53, 52)
myData <- data.frame(height, weight)
myData

write.table(myData, file = "myData.txt", sep = ",")
write.table(myData, file = "myData.csv", sep = ",")
