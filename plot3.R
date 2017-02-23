    source('load_and_clean_data.R')
    
    data <- loadAndCleanData()
    
    # Output Plot 3
    output <- png(file="plot3.png", width=480, height=480, units = "px", bg = "transparent")
    par(mfrow = c(1,1))
    with(data, {
        plot(DateTime, Sub_metering_1, type = "n", col="black", ylab = "Engergy sub metering", xlab = "")
        lines(DateTime, Sub_metering_1, type = "l", col="black")
        lines(DateTime, Sub_metering_2, type = "l", col="red")
        lines(DateTime, Sub_metering_3, type = "l", col="blue")
        legend("topright",lty="solid",col=c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    }) 
    dev.off()