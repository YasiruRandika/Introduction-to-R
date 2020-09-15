dataSet <- read.table("DataSet.txt", header = TRUE, sep = ",")
dataSet

#Assign the vector elements as the header names of the data set
names(dataSet) <- c("X1", "X2")

attach(dataSet)

dataSet

#Draw histogram
hist(X2, main = "Histogram", xlab = "X2", ylab = "Frequency")
abline(h = 0)

#Draw a histogram using seven classes where the lower limit is 130 and an upper limit of 270
#right = TRUE -> logical; if TRUE, the histogram cells are right-closed (left open) intervals. 
histogram <- hist(X2, main = "Histogram", xlab = "X2", ylab = "Frequency", breaks = seq(130, 270, length=8), right = TRUE) #(10, 12]  10 < x <= 12
histogram <- hist(X2, main = "Histogram", xlab = "X2", ylab = "Frequency", breaks = seq(130, 270, length=8), right = FALSE) #[10, 12)  10 ≤ x < 12

#Construct the frequency distribution for the above specification.
breaks <- histogram$breaks
#breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

classes <- c()


for(i in 1:length(breaks) - 1) {
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}

cbind(Classes = classes, frequency = freq)


#Portray the distribution in the form of a frequency polygon
lines(histogram$mids, freq)

#frequency Polygon
plot(mids, freq, type = 'l', main = "Frequency polygon", xlab = "Shareholders", ylab = "Frequency", ylim = c(0, max(freq)))

#Portray the distribution in a less-than cumulative frequency polygon.
cum.freq <- cumsum(freq)

new <-c()
for(i in 1:length(breaks)) {
  if(i == 1) {
    new[i] = 1;
  } else {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'o', main="Frequency Polygon", xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0, max(cum.freq)))

#To get the cumulative frequency table as the output, you can use the “cbind()” command.
cbind(upper = breaks, CumFreq = new)


#. Based on the polygon, three out of four (75%) of the companies have how many shareholders or less?
abline(h = sum(freq) * 0.75, v=207)
