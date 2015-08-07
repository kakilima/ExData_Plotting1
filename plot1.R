## Plot 1
png("plot1.png", width = 480, height = 480)
hist(data$"Global Active Power",
     col="red",
     breaks=12,
     ylim=c(0,1200),
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()