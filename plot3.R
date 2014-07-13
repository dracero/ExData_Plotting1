y<-household_power_consumption
y<-y[y$Date=="2/1/2007" | y$Date=="2/2/2007",]
v<-(as.numeric(y$Sub_metering_1))
w<-(as.numeric(y$Sub_metering_2))
g<-(as.numeric(y$Sub_metering_3))
png(file = "plot3.png",width = 480, height = 480, units = "px" )
plot(v,type="l", ylab="Energy Metering")
lines(w,col="red")
lines(g,col="blue")
legend("topright",cex=0.5,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()
