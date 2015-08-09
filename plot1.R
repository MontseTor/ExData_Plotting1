Power <- read.csv("household_power_consumption.txt", sep=";", header=T, na.strings="?")
Power$Date <- as.Date(Power$Date, format="%d/%m/%Y")
Power <- Power[(Power[,1]=="2007-02-01" | Power[,1]=="2007-02-02"),]
png("plot1.png", width=480, height = 480, units="px")
with(Power, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power"))
dev.off()
