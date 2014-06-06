#exploratory data analysis 
#course project 1
source(load_data.R)

png('plot1.png',width=480,height=480,units="px")
hist(hpc_sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

