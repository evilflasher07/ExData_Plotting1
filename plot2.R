##Set Working Directory
setwd("C:/Users/rowell/Desktop/Project1")

##Read File(Code Snipet Source: Mary J. Camp)
hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                  "household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep=";")))

##Create string of Date and Time
Days <- strptime(paste(hpc$Date, hpc$Time), format='%d/%m/%Y %H:%M:%S')

##Create Line Plot
plot(Days, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

##Save Histogram in png format
dev.copy(png, "plot2.png")

##Close device
dev.off()