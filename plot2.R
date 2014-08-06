source("dataretrieval.R", echo = T)
plot(x=powerconsumption$Time,
     y=powerconsumption$Global_active_power, 
     type='l',
     main="Global Active Power", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()
