#exploratory data Project 1
#Plot 2
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
     subdata$Global_active_power,
     type="l",
     ylab="Global Active Power(kilowatts)",
     xlab="")