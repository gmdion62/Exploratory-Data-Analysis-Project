household_power_consumption <- read.table("household_power_consumption.txt",sep=";",header=TRUE)

#2007-02-01 and 2007-02-02
# use as.Date( ) to convert strings to dates
household_power_consumption$Date <- as.Date(household_power_consumption$Date,format="%d/%m/%Y")
household_power_consumption <- household_power_consumption[household_power_consumption$Date>"2007-01-31",]
household_power_consumption <- household_power_consumption[household_power_consumption$Date<"2007-02-03",]
household_power_consumption$Global_active_power <- as.numeric(household_power_consumption$Global_active_power)
household_power_consumption$DateTime <- as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
