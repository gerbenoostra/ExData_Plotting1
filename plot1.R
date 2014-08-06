source("dataretrieval.R", echo = T)
hist(powerconsumption$Global_active_power, col='red', xlim=c(0, 7.5),
  main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
