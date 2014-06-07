#exploratory data analysis 
#course project 1

source("load_data.R")
hpc_sub$date_time <- paste(as.character(hpc_sub$Date), as.character(hpc_sub$Time))
hpc_sub$date_time <- strptime(hpc_sub$date_time,"%d/%m/%Y %H:%M:%S")

png('plot2.png',width=480,height=480,units="px")
with( hpc_sub, plot(x=date_time,y=Global_active_power,type="line",
                    xlab = "",
                    ylab = "Global Active Power (kilowatts)"))
dev.off()
