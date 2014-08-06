source("dataretrieval.R", echo = T)
opar <- par() 
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 0, 0))
plot(x=powerconsumption$Time,
     y=powerconsumption$Global_active_power,
     type='l', main="", xlab="", ylab="Global Active Power")

plot(x=powerconsumption$Time,
     y=powerconsumption$Voltage,
     type='l', main="", xlab="datetime", ylab="Voltage")

plot(x=powerconsumption$Time,
     y=powerconsumption$Sub_metering_1,
     type='l', col='black',
     main="", xlab="", ylab="Energy sub metering")
lines(x=powerconsumption$Time, y=powerconsumption$Sub_metering_2, col='red')
lines(x=powerconsumption$Time, y=powerconsumption$Sub_metering_3, col='blue')
legend("topright", lwd=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(x=powerconsumption$Time,
     y=powerconsumption$Global_reactive_power,
     type='l', main="", xlab="datetime", ylab="Global_reactive_power")

dev.off()
par(opar)#Restore original par settings