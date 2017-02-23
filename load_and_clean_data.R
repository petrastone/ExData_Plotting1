loadAndCleanData <- function() {
    if(!file.exists("household_power_consumption.txt")){
        url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url, destfile='power_consumption.zip', method="curl")
        unzip(zipfile = "power_consumption.zip")    
    }
    # Read the file from disk
    data <- read.table("household_power_consumption.txt", sep = ";", header=T, na.strings="?")
    data$Day <- as.Date(data$Date, format="%d/%m/%Y")
    data$DateTime <- as.POSIXlt( paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
        
    # Subset data into first 2 days of Feb 2007
    feb2007 <- droplevels(subset( data, Day %in% c( as.Date("2007-02-01"),as.Date("2007-02-02")) ) )
    return(feb2007)
}