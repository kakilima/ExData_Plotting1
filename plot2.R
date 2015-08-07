## Plot 2
png("plot2.png", width = 480, height = 480)
plot(data$Time, data$'Global Active Power',
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()