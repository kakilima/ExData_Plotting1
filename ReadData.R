# Read File
raw=read.table("household_power_consumption.txt", header = T, sep=";",stringsAsFactors = F)
names(raw)=c("date1","Time","Global Active Power","Global Reactive Power","Voltage","Global Intensity","Sub Metering 1","Sub Metering 2","Sub Metering 3")
raw$Date = as.Date(raw$date1,'%d/%m/%Y')
raw$Time = strptime(paste(raw$date1,raw$Time),"%d/%m/%Y %H:%M:%S")

# Format & Subset Data
data<-raw[raw$Date=="2007-02-01"| raw$Date=="2007-02-02", c(10,2:9)]
for(i in 3:9) {data[,i]= as.double(data[,i])}
