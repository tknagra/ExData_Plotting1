Error: '\U' used without hex digits in character string starting ""C:\U"
> /
Error: unexpected '/' in "/"
> datfile <- "C:/Users/tknagra/Desktop/EDA/household_power_consumption.txt"
> data <- read.table(datafile, header =TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file './data/household_power_consumption.txt': No such file or directory
> cd
Error: object 'cd' not found
> getwd
function () 
.Internal(getwd())
<bytecode: 0x0000000005fcd0a8>
<environment: namespace:base>
> getwd()
[1] "C:/Users/tknagra/Desktop/EDA"
> datafile <- "household_power_consumption.txt"
> data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> head(data)
        Date     Time Global_active_power Global_reactive_power Voltage Global_intensity Sub_metering_1 Sub_metering_2 Sub_metering_3
1 16/12/2006 17:24:00               4.216                 0.418 234.840           18.400          0.000          1.000             17
2 16/12/2006 17:25:00               5.360                 0.436 233.630           23.000          0.000          1.000             16
3 16/12/2006 17:26:00               5.374                 0.498 233.290           23.000          0.000          2.000             17
4 16/12/2006 17:27:00               5.388                 0.502 233.740           23.000          0.000          1.000             17
5 16/12/2006 17:28:00               3.666                 0.528 235.680           15.800          0.000          1.000             17
6 16/12/2006 17:29:00               3.520                 0.522 235.020           15.000          0.000          2.000             17
> subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> globalActivePower <- as.numeric(subSetData$Global_active_power)
> png("plot1.png", width=480, height=480)+hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
Error in png("plot1.png", width = 480, height = 480) + hist(globalActivePower,  : 
  non-numeric argument to binary operator
> png("plot1.png", width=480, height=480)
> hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> getwd()
[1] "C:/Users/tknagra/Desktop/EDA"
> 
