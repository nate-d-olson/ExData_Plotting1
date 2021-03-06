#exploratory data analysis 
#course project 1

source("load_data.R")
hpc_sub$date_time <- paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time))
hpc_sub$date_time <- strptime(hpc_sub$date_time,"%d/%m/%Y %H:%M:%S")

png('plot4.png',width=480,height=480,units="px")
par(mfrow=c(2,2))
with( hpc_sub, plot(x=date_time,y=Global_active_power,type="line",
                    xlab = "",
                    ylab = "Global Active Power (kilowatts)"))

with( hpc_sub, plot(x=date_time,y=Voltage,type="line",
                    xlab = "datetime"))

with( hpc_sub, plot(x=date_time,y=Sub_metering_1,type="line",
                    col = "black",
                    xlab = "",
                    ylab = "Energy sub metering"))
with( hpc_sub, lines(x=date_time,y=Sub_metering_2, col = "red"))
with( hpc_sub, lines(x=date_time,y=Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"), lty = 1)     

with( hpc_sub, plot(x=date_time,y=Global_reactive_power,type="line",
                    xlab = "datetime"))
dev.off()
