source("ExData_Plotting1/ReadDataFunction.R")
data = getData("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
par(mfrow=c(2,2),mar = c(4.1, 4.1, 2, 2))
with(data, {
  plot(Date, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  plot(Date, Voltage, type = "l", ,xlab = "datetime")
{  plot(data$Date, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  points(data$Date, data$Sub_metering_2, col = "Red", type  = "l")
  points(data$Date, data$Sub_metering_3, col = "Blue", type = "l")
  legend("topright",lwd=c(1,1), col = c("black","Red","Blue"),legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),bty = "n",cex = 0.7)
  }
  plot(Date, Global_reactive_power, type = "l", xlab = "datetime")
})
