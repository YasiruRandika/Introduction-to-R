#Descriptive Statistics#

dataSet <- read.csv("dataSet3.csv", header = TRUE)
dataSet

#setting column names
names(dataSet) <- c("Age", "Gender", "Accomadation")

#setting factors
dataSet$Gender <- factor(dataSet$Gender,c(1,2),c("Male","Female"))
dataSet$Accomadation <- factor(dataSet$Accomadation, c(1, 2, 3), c("Home", "Boarding Place", "Hostel"))
fix(dataSet)

#attach dataSet
attach(dataSet)
mean(Age)

#detach dataSet
deattach(dataSet)
mean(dataSet$Age)

#Analysing categorical Variables (Univariante Analysis)

#frequency Table
genderFre <- table(Gender)
genderFre

#BarChart
barplot(genderFre, main = "Bar Plot for Gender", ylab = "Frequency", xlab = "Gender")
#add horizontal line
abline(h = 0)

#PieChart
pie(genderFre, main = "Pie Chart for Gender")

#Qunatitative Variable Analysis

#BoxPlot
boxplot(Age, main="Age", horizontal = TRUE)

#Histograms
hist(Age, main = "Histogram for Age")


#Bivariante Analysis

#two-way frequency table
Gender.Accomadation.table <- table(Gender, Accomadation)
Gender.Accomadation.table

#Stacked/Component Bar Chart
barplot(Gender.Accomadation.table, main="Stacked BarChart", xlab = "Accomadation", ylab = "Frequency", legend=rownames(Gender.Accomadation.table))
abline(h = 0)

#Multiple Bar Chart
barplot(Gender.Accomadation.table, beside = TRUE, main = "Multiple Bar Chart", legend=rownames(Gender.Accomadation.table), ylab = "Frequency", xlab = "Accomadation")
abline(h=0)

#Side-by-side Box Plot
boxplot(Age~Gender, main="Side by Side box plot", xlab = "Gender", ylab = "Age", horizontal = TRUE)
boxplot(Age~Accomadation, main="Side by Side box plot", xlab = "Accomadation", ylab = "Age", horizontal = TRUE)

#xtabs() when you want to numerically study the distribution of one categorical variable, or the 
#relationship between two categorical variables. Categorical variables are also called “factor” variables in R
xtabs(Age~Gender+Accomadation)

#get the mean Age  for all the combinations of gender and accommodation.
xtabs(Age~Gender+Accomadation)/Gender.Accomadation.table
