
electric <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

electric$Date <- as.Date(electric$Date, "%d/%m/%Y")

electric <- subset(electric,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

electric <- electric[complete.cases(electric),]

dateTime <- paste(electric$Date, electric$Time)

dateTime <- setNames(dateTime, "DateTime")

electric <- electric[ ,!(names(electric) %in% c("Date","Time"))]

electric <- cbind(dateTime, electric)

electric$dateTime <- as.POSIXct(dateTime)
