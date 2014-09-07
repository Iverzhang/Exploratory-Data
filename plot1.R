#exploratory data Project 1
#Plot 1
setwd("F:/Code/R/datacourse/exploratory data")
data <- read.table("household_power_consumption.txt",
                   header=TRUE,sep=";",
                   stringsAsFactors=FALSE)
data$Date <- as.Date(data$Date,"%d/%m/%y%y")
subdata <- data[which(data$Date=="2007-02-01"|data$Date=="2007-02-02"),]
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)
hist(subdata$Global_active_power,
     col="red",
     main="Global Active Power",
     xlim=c(0,6),
     ylim=c(0,1200),
     xlab="Global Active Power(kilowatts)")