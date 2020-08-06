## Week 1 Project - BRIAN BOHORQUEZ


# Impots data into R 
data <- read.table("./household_power_consumption.txt", sep = ";", stringsAsFactors = F, header = T, nrows = 70000)

# Converts class of Date variable
dates <- as.Date(data[,1], "%d/%m/%Y")
data[1] <- dates


# Selects only the required dates
data <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")


#### PLOT 1 ####

png(filename = "plot1.png")
hist(as.double(data$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()


