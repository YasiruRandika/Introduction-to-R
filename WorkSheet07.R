setwd("C:/Users/IT19131184/Downloads")

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
  n <- c(n, paste('S', n))
}

colnames(samples) <- n
samples
