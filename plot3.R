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

## Plot Sub_metering_1 VS Days
 plot(Days, hpc[,7], type="l", xlab="", ylab="Energy sub metering")

## Plot Sub_metering_2 VS Days
lines(Days, hpc[,8], type="l", col="red")

## Plot Sub_metering_3 VS Days
lines(Days, hpc[,9], type="l", col="blue")

## Adds Legends
legend("topright", lty=c(1,1), col=c("black","blue","red"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))


##Save Plot in png format
dev.copy(png, "plot2.png")

##Close device
dev.off()