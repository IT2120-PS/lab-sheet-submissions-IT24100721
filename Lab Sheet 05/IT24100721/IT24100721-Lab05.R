setwd("C:\\Users\\user\\OneDrive\\Documents\\Desktop\\IT24100721")

Delivery_Times<- read.table("C:\\Users\\user\\OneDrive\\Documents\\Desktop\\IT24100721\\Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = FALSE)
colnames(Delivery_Times) <- "Time"

Delivery_Times$Time <- as.numeric(as.character(Delivery_Times$Time))



breaks <- seq(20, 70, by = (70-20)/9)
hist(Delivery_Times$Time,
     breaks = breaks,
     right = FALSE,
     col = "lightblue",
     border = "black",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency")

freq_table <- hist(Delivery_Times$Time, 
                   breaks = breaks, 
                   right = FALSE, 
                   plot = FALSE)
cum_freq <- cumsum(freq_table$counts)

plot(breaks[-1], cum_freq, type = "o", pch = 16, col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency")






