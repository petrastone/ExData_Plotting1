    source('load_and_clean_data.R')
    
    data <- loadAndCleanData()
    
    # Output Plot 2
    output <- png(file="plot2.png", width=480, height=480, units = "px", bg = "transparent")
    par(mfrow = c(1,1))
    with(data, plot(DateTime, Global_active_power, type = "l",  ylab="Global Active Power (kilowatts)", xlab=""))
    dev.off()