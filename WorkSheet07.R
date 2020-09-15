#Import the dataset
nicotine <- read.table("data.txt", header = TRUE)
fix(nicotine)

#Convert the data structure into horizontal view
nicotine <- nicotine[[1]]
nicotine

#Mean of the dataset
mean(nicotine)

#standard divation of the dataset
sd(nicotine)

#variance of the dataset
var(nicotine)

# Get 30 random samples of size 5, with replacement and calculate sample mean and
#sample variance for each sample
samples <- c()
n <- c()

for(i in 1 : 30) {
  s <- sample(nicotine, 5)
  samples <- cbind(samples, s)
  #paste concatenates two strings with a space character between them. 
  n <- c(n, paste('S', i))
}

colnames(samples) <- n
samples

#“colMeans()” function computes the means of columns of matrix
# mean and variance of the Sample 
s.means <- colMeans(samples)

#“apply()” takes Data frame or matrix as an input and gives output in vector, list or array
#Variance row vise
s.var <- apply(samples, 1, var)

#Variance column vise
s.var <- apply(samples, 2, var)
s.var

# mean and varianceof the Sample Means
mean(s.means) 
var(s.means)

#population mean and variance
mean(nicotine) 
var(nicotine)

#Conclution:-When you check above two results you can see population mean and the mean of sample means are approximately equal 

#Conclution:-When sample size increasing the variance of the sample decreasing. Compare sample variance with (population variance / n). You can see that two values are approximately equal with each other.  
