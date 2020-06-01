
# Set the working directory
setwd("C:/Users/Samara French/Documents/GitHub/ExData_Plotting1")

# Load the data 
household_power_consumption <- read.csv("F:/Professional Development/Courses/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

# Subset the data (2007-02-01 to 2007-02-02)
power <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

# Set up the graphics device 
png(filename = "plot4.png", width = 480, height = 480)

# Plot 4
power$day <- with(power, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

par(mfrow = c(2,2))

with(power, plot(day, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

with(power, plot(day, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))

plot(power$day, power$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(power$day, power$Sub_metering_2, type = "l", col = "red")
points(power$day, power$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.95)

with(power, plot(day, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power"))

dev.off()
