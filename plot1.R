
# Set the working directory
setwd("C:/Users/Samara French/Documents/GitHub/ExData_Plotting1")

# Load the data 
household_power_consumption <- read.csv("F:/Professional Development/Courses/Exploratory Data Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

# Subset the data (2007-02-01 to 2007-02-02)
power <- subset(household_power_consumption, Date == "1/2/2007" | Date == "2/2/2007")

# Set up the graphics device 
png(filename = "plot1.png", width = 480, height = 480)

# Plot 1
hist(power$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()
