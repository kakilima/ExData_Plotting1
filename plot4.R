## Plot 4
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(data$Time, data$"Global Active Power",
     type="l",
     xlab="",
     ylab="Global Active Power")
plot(data$Time, data$"Voltage",
     type="l",
     xlab="datetime",
     ylab="Voltage")
plot(data$Time, data$"Sub Metering 1",
     col="black",
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(data$Time, data$"Sub Metering 2", col="red")
lines(data$Time, data$"Sub Metering 3", col="blue")
legend("topright",
       legend=c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),
       lty=1,
       col=c("black","red","blue"),
       cex=0.75)
plot(data$Time, data$"Global Reactive Power",
     type="l",
     xlab="datetime",
     ylab="Global Reactive Power")
dev.off()