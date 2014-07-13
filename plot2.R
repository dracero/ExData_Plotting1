y<-household_power_consumption
y<-y[y$Date=="2/1/2007" | y$Date=="2/2/2007",]
z<-(as.numeric(y$Global_active_power)*2)/1000
png(file = "plot2.png",width = 480, height = 480, units = "px" )
plot(z, type="l")
dev.off()
