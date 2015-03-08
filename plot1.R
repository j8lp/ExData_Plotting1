source("ExData_Plotting1/ReadDataFunction.R")
data = getData("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip")
hist(ata$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
