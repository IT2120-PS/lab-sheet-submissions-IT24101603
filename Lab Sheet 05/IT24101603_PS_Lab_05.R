getwd()
setwd("C:\\Users\\teran\\OneDrive\\Desktop\\IT24101603")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header=TRUE, sep=",")
fix(Delivery_Times)
attach(Delivery_Times)

names(Delivery_Times) <- c("Delivery_Time_In_Minutes")
attach(Delivery_Times)

histogram <- hist(Delivery_Time_In_Minutes, 
                  main = "Histogram for Delivery Time", 
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE)

##Assign class limits of the frequency distribution into a variable
breaks <- round(histogram$breaks)

##Assign class frequencies of the histogram into a variable
freq <- histogram$counts

##Getting cumulative frequncies
cum.freq <- cumsum(freq)

##Creating a null variable
new <- c()

##Storing cumulative frequencies
for(i in 1:length(breaks))
{
  if(i==1)
  {
    new[i]=0
  }
  else
  {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, 
     new, 
     type = "l", 
     main = "Cumulative Frequency Polygon for Delivery Time", 
     xlab= "Delivery Time",
     ylab="Cumulative Frequency",
     ylim = c(0, max(cum.freq)))

cbind(Upper = breaks, CumFreq = new)


