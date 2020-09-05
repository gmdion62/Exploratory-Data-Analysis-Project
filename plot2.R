par(mfrow=c(1,1),mar=c(4,4,4,4))
plot(household_power_consumption$DateTime, household_power_consumption$Global_active_power, type = "l", lty = 1,ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png, file = "plot2.png",width=480,height=480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!