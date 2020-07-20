#This is my first Comment

2+2

#get the current working directory
getwd()

#Change the working directory
setwd("C:\\Users\\yasir\\OneDrive\\Documents\\GitHub\\Introduction-to-R")
getwd()

#Get help
?solve

#Operators
#Scalar Operators
9*2
2+2
#Modulas(Mod)
9%%2
#Integer Division
9%/%2
#Exponention(Power)
9^2
9**2

#Logical Operators
x = 3
y = 5

isTRUE(x == y)
isTRUE(x > y)
isTRUE(x < y & y > 0)
isTRUE(x < y | y < 0)

#Assignment Operators
a = 5
a <- 5
#For Global assignments
a <-- 5


#Vector
a <- c(1, 2, 3, 4)
a
b <- c(1.32, 32.2, 2, 4)
b

class(a)
class(b)


d <- c("A", "B", "C", "D")
d
class(d)

#Factor
gender <- c(1, 1, 0, 1)
gender
gender <- factor(gender, c(0, 1), c("Male", "Female"))
gender
class(gender)

#List
p <- 1
q <- c(1, 2, 3)
r <- "Black"

newList <- list(p, q, r)
newList
class(newList)

#Get all varibles created
objects()

#Matrixes
matrix_1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = TRUE)
matrix_1
matrix_2 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = FALSE)
matrix_2

#Data Frame
Height = c(23, 43, 23, 12)
Weight = c(12, 32, 42, 42)

data_set = data.frame(Height, Weight)
data_set
class(data_set)

#Packages
#Some packages are already installed
install.packages("ggplot2")
#Load the installed packages
library(ggplot2)

