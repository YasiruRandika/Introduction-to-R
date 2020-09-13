dataSet <- read.table("Data.txt", header = TRUE, sep = ",")
dataSet
 
names(dataSet) <- c("X1", "X2")

attach(dataSet)

#Draw histogram
hist(X2, main = "Histogram", xlab = "X2", ylab = "Frequency")

#Draw a histogram using seven classes where the lower limit is 130 and an upper limit of 270
histogram <- hist(X2, main = "Histogram", xlab = "X2", ylab = "Frequency", breaks = seq(130, 270, length=8), right = FALSE)

#Construct the frequency distribution for the above specification.
breaks <- round(histogram$breaks)
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
