
# Set the working directory
setwd("C:/Users/Samara French/Documents/GitHub/ExData_Plotting1")

# Load the data 
household_power_consumption <- read.csv("F:/Professional Development/Courses/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

# Subset the data (2007-02-01 to 2007-02-02)
power <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

# Set up the graphics device 
png(filename = "plot3.png", width = 480, height = 480)

# Plot 3
power$day <- with(power, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

plot(power$day, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(power$day, power$Sub_metering_2, type = "l", col = "red")
points(power$day, power$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
