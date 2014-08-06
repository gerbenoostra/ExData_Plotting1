source("dataretrieval.R", echo = T)
plot(x=powerconsumption$Time,
     y=powerconsumption$Sub_metering_1,
     type='l', col='black',
     main="", xlab="", ylab="Energy sub metering")
lines(x=powerconsumption$Time, y=powerconsumption$Sub_metering_2, col='red')
lines(x=powerconsumption$Time, y=powerconsumption$Sub_metering_3, col='blue')
legend("topright", lwd=1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()
