Power <- read.csv("household_power_consumption.txt", sep=";", header=T, na.strings="?")
Power$Date <- as.Date(Power$Date, format="%d/%m/%Y")
Power$Week <- weekdays(as.Date(Power$Date, format="%d/%m/%Y"))
Power <- Power[(Power[,1]=="2007-02-01" | Power[,1]=="2007-02-02"),]

png("plot3.png", width=480, height = 480, units="px")
with(Power, plot(c(1:2880), Sub_metering_1, type="l", xaxt="n", xlab="", ylab="Energy sub metering"))
with(Power, lines(c(1:2880), Sub_metering_2, col="red"))
with(Power, lines(c(1:2880), Sub_metering_3, col="blue"))
axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col=c("black", "red", "blue"), lty=c(1,1,1))
dev.off()
