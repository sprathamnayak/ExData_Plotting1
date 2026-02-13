source("load_data.R")

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2), mar = c(4,4,2,1))

plot(d$Datetime, d$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

plot(d$Datetime, d$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(d$Datetime, d$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(d$Datetime, d$Sub_metering_2, col = "red")
lines(d$Datetime, d$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), lty = 1, bty = "n")

plot(d$Datetime, d$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
