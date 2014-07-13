y<-household_power_consumption
y<-y[y$Date=="2/1/2007" | y$Date=="2/2/2007",]
png(file = "plot1.png",width = 480, height = 480, units = "px" )
hist((as.numeric(y$Global_active_power)*2)/1000, xlab="Global active power (Kilowatts)", main="Global Active Power", col="red")
dev.off()
