    source('load_and_clean_data.R')
    
    data <- loadAndCleanData()
    
    # Output Plot 1
    output <- png(file="plot1.png", width=480, height=480, units = "px", bg = "transparent")
    par(mfrow = c(1,1))
    hist( data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()