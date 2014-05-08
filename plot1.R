##Set Working Directory
setwd("C:/Users/rowell/Desktop/Project1")

##Read File(Code Snipet credited to Mary J. Camp)

hpc <- read.table("household_power_consumption.txt",
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                  "household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep=";")))

##Create Histogram
#x-label = Global Active Power(kilowatts)
#y-label = Frequency
#bar color = red
hist(hpc[,3], xlab="Global Active Power(kilowatts)", 
		  ylab="Frequency", 
		  main="Global Active Power",
		  col="red")
##Save Histogram in png format
dev.copy(png, "plot1.png")

##Close device
dev.off()