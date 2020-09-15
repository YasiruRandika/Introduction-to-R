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

#paste concatenates two strings with a space character between them. paste0 does the same thing except there's no space character between the two strings being concatenated. 
for(i in 1:length(breaks) - 1) {
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
}

# cbind() to join two sets of columns together into a single dataframe.
cbind(Classes = classes, frequency = freq)

#Using "lines" command you are able to draw the frequency polygon in same plot 
#Portray the distribution in the form of a frequency polygon
lines(histogram$mids, freq)

#frequency Polygon
#type -> line
plot(mids, freq, type = 'l', main = "Frequency polygon", xlab = "Shareholders", ylab = "Frequency", ylim = c(0, max(freq)))
#type -> plots
plot(mids, freq, type = 'p', main = "Frequency polygon", xlab = "Shareholders", ylab = "Frequency", ylim = c(0, max(freq)))

#Portray the distribution in a less-than cumulative frequency polygon.
cum.freq <- cumsum(freq)
cum.freq

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

#abline(a=NULL, b=NULL, h=NULL, v=NULL, …) 
# a, b: single values that specify the intercept and slope of the line 
# h: the y-value for the horizontal line 
# v: the x-value for the vertical line

#. Based on the polygon, three out of four (75%) of the companies have how many shareholders or less?
abline(h = sum(freq) * 0.75, v=207)

#detach dataSet
detach(dataSet)
