#exploratory data analysis 
#course project 1

#get data
#target dataset file names
compressed_data <- "household_power_consumption.zip"
decompressed_data <- "household_power_consumption.txt"

if (file.exists(decompressed_data)){
   hpc <- read.table("household_power_consumption.txt", sep = ";", na.strings="?",header = T)
} else if (file.exists(compressed_data)) {
    unzip(compressed_data)    
    hpc <- read.table("household_power_consumption.txt", sep = ";", na.strings="?",header = T)
} else {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="household_power_consumption.zip",
                  method = "curl")
    unzip(compressed_data)    
    hpc <- read.table("household_power_consumption.txt", sep = ";", na.strings="?",header = T)   
}

#subset the data from the dates 2007-02-01 and 2007-02-02.
hpc_sub <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]
