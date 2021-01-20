par(mfrow = c(2,2), mar = c(4,4,2,1))

plot(data_set$dateTime, data_set$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(data_set$Voltage~data_set$dateTime, type = "l", ylab = "Voltage", xlab = "dateTime")

plot(data_set$Sub_metering_1~data_set$dateTime, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data_set$Sub_metering_2~data_set$dateTime, col = 'red')
lines(data_set$Sub_metering_3~data_set$dateTime, col = 'blue')
legend("topright", col = c('black', 'red', 'blue'), lwd = 2, legend = c('Sub_metering_1','Sub_metering_2',"Sub_metering_3"), bty = 'n')

plot(data_set$Global_reactive_power~data_set$dateTime, type = "l", xlab = "dateTime", ylab = 'Global_reactive_power')

dev.copy(png, 'plot4.png')
dev.off()
