library(data.table)

data_set <- read.table("household_power_consumption.txt", header = TRUE, sep = ";",na.strings = "?", colClasses =  c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

data_set$Date <- as.Date(data_set$Date, "%d/%m/%Y")

data_set <- subset(data_set, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

dateTime <- paste(data_set$Date, data_set$Time)

names(dateTime) <- "DateTime"

data_set <- data_set[, !(names(data_set) %in% c("Date", "Time"))]

data_set <- cbind(dateTime, data_set)

data_set$dateTime <- as.POSIXct(dateTime)
