dataSet <- read.table("DATA 4.txt", header = TRUE, sep = " ")
dataSet

attach(dataSet)

#BoxPlot
boxplot(X1, main="Attendance", outline = TRUE, horizontal = TRUE)

#Histogra,
hist(X1, ylab = "Frequency", xlab = "Attendance", main = "Histogram")

#Stem
stem(X1)

#MEAN
mean(X1)

#median
median(X1)

#standard Deviation
sd(X1)

#summary of Varible
summary(X1)

#Q1
quantile(X1)[2]

#Q3
quantile(X1)[4]

#interquantile range
IQR(X1)

#FIND MODE
get.mode <- function(y) {
  counts <- table(y)
  names(counts)[counts == max(counts)]
}

get.mode(X3)

#FIND OUTLIERS
get.outliers <- function(x) {
  q1 <- quantile(x)[2]
  q3 <- quantile(x)[4]
  iqr <- IQR(x)
  ub <- q3 + iqr
  lb <- q1 - iqr
  print(paste("UpperBound - ", ub))
  print(paste("LowerBound - ", lb))
  print(paste("Outliers", paste(sort(x[x<lb|x>ub]), collapse = ",")))
}

get.outliers(X3)

  
