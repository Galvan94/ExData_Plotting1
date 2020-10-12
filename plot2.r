consumption <- read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data <- consumption[consumption$Date %in% c('1/2/2007','2/2/2007'),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
