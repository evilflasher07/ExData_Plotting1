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



##Plotting dimension 2 by 2
par(mfrow=c(2,2))

## Plot Creates 4 differnt plots
plot(Days, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(Days, hpc$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(Days, hpc[,7], type="l", xlab="", ylab="Energy sub metering")
lines(Days, hpc[,8], type="l", col="red")
lines(Days, hpc[,9], type="l", col="blue")
legend("topright", lty=c(1,1), col=c("black","blue","red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n",cex=0.85)
plot(Days, hpc[,4], type="l", xlab="datetime", ylab="Global_reactive_power")

##Copy image
dev.copy(png, "plot4.png")

##Close Device
dev.off()