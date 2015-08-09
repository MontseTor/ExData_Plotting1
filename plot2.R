Power <- read.csv("household_power_consumption.txt", sep=";", header=T, na.strings="?")
Power$Date <- as.Date(Power$Date, format="%d/%m/%Y")
Power$Week <- weekdays(as.Date(Power$Date, format="%d/%m/%Y"))
Power <- Power[(Power[,1]=="2007-02-01" | Power[,1]=="2007-02-02"),]

png("plot2.png", width=480, height = 480, units="px")
with(Power, plot(c(1:2880), Global_active_power, type="l", xaxt="n", xlab="", ylab="Global Active Power (kilowatts)"))
axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
