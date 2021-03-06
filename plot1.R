dd <- read.table("..\\data\\household_power_consumption.txt",sep = ";",header = T)
dd$Time <- strptime(paste(dd$Date,dd$Time),format = "%d/%m/%Y %H:%M:%OS")
dd$Date <- as.Date(dd$Time)

d <- dd[dd$Date %in% as.Date(c("2007-02-01", "2007-02-02")),]
d$Global_active_power <- as.numeric(as.character(d$Global_active_power))
d$Global_reactive_power <- as.numeric(as.character(d$Global_reactive_power))
d$Voltage <- as.numeric(as.character(d$Voltage))
d$Global_intensity <- as.numeric(as.character(d$Global_intensity))
d$Sub_metering_1 <- as.numeric(as.character(d$Sub_metering_1))
d$Sub_metering_2 <- as.numeric(as.character(d$Sub_metering_2))
d$Sub_metering_3 <- as.numeric(as.character(d$Sub_metering_3))

hist(d$Global_active_power,col="red",main="Global active power",xlab="Global active power (KW)")
dev.copy(png, file="plot1.png")
dev.off()
