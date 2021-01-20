with(data_set,{
  plot(Sub_metering_1~dateTime, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(Sub_metering_2~dateTime, col = 'red')
  lines(Sub_metering_3~dateTime, col = 'blue')
})

legend("topright", col = c('black', 'red', 'blue'), lwd = 1, legend = c('Sub_metering_1','Sub_metering_2',"Sub_metering_3"))

dev.copy(png, 'plot3.png')
dev.off()
