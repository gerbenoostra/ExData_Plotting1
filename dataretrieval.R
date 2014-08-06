library(RCurl)
fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
tempfile<-"exdata-data-household_power_consumption.zip"
if(!file.exists(tempfile)) download.file(fileUrl,destfile=tempfile, method="curl")
powerconsumption<-read.csv(unz(tempfile, "household_power_consumption.txt"),
                           header=TRUE, stringsAsFactors=FALSE,  na.strings="?", sep=";", dec=".")
powerconsumption<-transform(powerconsumption, 
                            Time = strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"),
                            Date = as.Date(Date, format="%d/%m/%Y")
                          )
powerconsumption<-subset(powerconsumption, Date %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")))