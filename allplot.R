# Read File
raw=read.table("household_power_consumption.txt", header = T, sep=";",stringsAsFactors = F)
names(raw)=c("date1","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity","Sub Metering 1","Sub Metering 2","Sub Metering 3")
raw$Date = as.Date(raw$date1,'%d/%m/%Y')
raw$Time = strptime(paste(raw$date1,raw$Time),"%d/%m/%Y %H:%M:%S")

# Format & Subset Data
data<-raw[raw$Date=="2007-02-01"| raw$Date=="2007-02-02", c(10,2:9)]
for(i in 3:9) {data[,i]= as.double(data[,i])}


## Plot 1
png("plot1.png", width = 480, height = 480)
hist(data$"Global Active Power",
     col="red",
     breaks=12,
     ylim=c(0,1200),
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()


## Plot 2
png("plot2.png", width = 480, height = 480)
plot(data$Time, data$'Global Active Power',
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()


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
