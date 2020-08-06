## Week 1 Project - BRIAN BOHORQUEZ


# Impots data into R 
data <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = F, header = T, nrows = 70000)

# Converts class of Date and Time variables
dates <- as.Date(data[,1], "%d/%m/%Y")
data[1] <- dates

# Selects only the required dates
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")


#### PLOT 2 ####

png(filename = "plot2.png")
plot(strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S") , as.double(data$Global_active_power), type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

