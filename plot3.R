## Plot 3
png("plot3.png", width = 480, height = 480)
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
dev.off()