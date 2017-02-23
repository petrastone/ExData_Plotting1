    source('load_and_clean_data.R')
    
    data <- loadAndCleanData()
    
    # Output Plot 4 (2x2 Grid)
    output <- png(file="plot4.png", width=480, height=480, units = "px", bg = "transparent")
    par(mfrow = c(2,2))
    
    # 1
    with(data, plot(DateTime, Global_active_power, type = "l", ylab="Global Active Power", xlab=""))
    
    # 2
    with(data, plot(DateTime, Voltage, type = "l", xlab="datetime"))
    
    # 3
    with(data, {
        plot(DateTime, Sub_metering_1, type = "n", col="black", ylab = "Energy sub metering", xlab = "")
        lines(DateTime, Sub_metering_1, type = "l", col="black")
        lines(DateTime, Sub_metering_2, type = "l", col="red")
        lines(DateTime, Sub_metering_3, type = "l", col="blue")
        legend("topright",lty="solid",col=c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    })
    
    # 4
    with(data, plot(DateTime, Global_reactive_power, type = "l", xlab="datetime"))
    
    dev.off()