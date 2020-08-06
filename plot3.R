## Week 1 Project - BRIAN BOHORQUEZ


# Impots data into R 
data <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = F, header = T, nrows = 70000)

# Converts class of Date and Time variables
dates <- as.Date(data[,1], "%d/%m/%Y")
data[1] <- dates

# Selects only the required dates
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")


#### PLOT 3 ####

png(filename = "plot3.png")
plot(strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S") , data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S") , data$Sub_metering_2, col = "red")
lines(strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S") , data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))
dev.off()
