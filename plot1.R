library(RCurl)
fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
tempfile<-"exdata-data-household_power_consumption.zip"
if(!file.exists(tempfile)) download.file(fileUrl,destfile=tempfile, method="curl")
powerconsumption<-read.csv(unz(tempfile, "household_power_consumption.txt"),
                    header=TRUE, stringsAsFactors=FALSE,  na.strings="?", sep=";", dec=".")
powerconsumption<-transform(powerconsumption, 
            Date = as.Date(Date, format="%d/%m/%Y"),
            Time = strptime(Time, format="%H:%M:%S")
            )
powerconsumption<-subset(powerconsumption, Date %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")))
hist(powerconsumption$Global_active_power, col='red', xlim=c(0, 7.5),
  main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, "plot1.png", width=480, height=480)
