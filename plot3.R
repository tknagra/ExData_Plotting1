
> getwd()
[1] "C:/Users/tknagra/Desktop/EDA"
> datafile <- "household_power_consumption.txt"
> data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> head(data)
        Date     Time Global_active_power Global_reactive_power Voltage
1 16/12/2006 17:24:00               4.216                 0.418 234.840
2 16/12/2006 17:25:00               5.360                 0.436 233.630
3 16/12/2006 17:26:00               5.374                 0.498 233.290
4 16/12/2006 17:27:00               5.388                 0.502 233.740
5 16/12/2006 17:28:00               3.666                 0.528 235.680
6 16/12/2006 17:29:00               3.520                 0.522 235.020
  Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
1           18.400          0.000          1.000             17
2           23.000          0.000          1.000             16
3           23.000          0.000          2.000             17
4           23.000          0.000          1.000             17
5           15.800          0.000          1.000             17
6           15.000          0.000          2.000             17
> subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> globalActivePower <- as.numeric(subSetData$Global_active_power)
> subMetering1 <- as.numeric(subSetData$Sub_metering_1)
> subMetering2 <- as.numeric(subSetData$Sub_metering_2)
> subMetering3 <- as.numeric(subSetData$Sub_metering_3)
> png("plot3.png", width=480, height=480)
> plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
> lines(datetime, subMetering2, type="l", col="red")
> lines(datetime, subMetering3, type="l", col="blue")
> legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
> dev.off()  
null device 
          1 
