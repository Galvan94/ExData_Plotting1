consumption <- read.table("household_power_consumption.txt",header = TRUE,sep = ";")
data <- consumption[consumption$Date %in% c('1/2/2007','2/2/2007'),]
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sub_metering_1 <- as.numeric(data$Sub_metering_1)
sub_metering_2 <- as.numeric(data$Sub_metering_2)
sub_metering_3 <- as.numeric(data$Sub_metering_3)

png("plot3.png", width=480, height=480)

plot(datetime, sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_metering_2, type="l", col="red")
lines(datetime, sub_metering_3, type="l", col="blue")

dev.off()
