#exploratory data Project 1
#Plot 3
setwd("F:/Code/R/datacourse/exploratory data")
data <- read.table("household_power_consumption.txt",
                   header=TRUE,sep=";",
                   stringsAsFactors=FALSE)
data$Date <- as.Date(data$Date,"%d/%m/%y%y")
subdata <- data[which(data$Date=="2007-02-01"|data$Date=="2007-02-02"),]
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)

DT <- paste(subdata$Date,subdata$Time)
subdata$Time <- strptime(DT,"%Y-%m-%d %H:%M:%S")
plot(subdata$Time,
     subdata$Sub_metering_1,
     type="l",
     ylab="Energy sub metering",
     xlab="")
lines(subdata$Time,
      subdata$Sub_metering_2,
      col="red")
lines(subdata$Time,
      subdata$Sub_metering_3,
      col="blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),
       lty=1,cex=.75)