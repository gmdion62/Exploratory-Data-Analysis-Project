par(mfrow=c(1,1),mar=c(5,5,2,2))
hist(household_power_consumption$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png",width=480,height=480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!