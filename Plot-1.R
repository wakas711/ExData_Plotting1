
electric$Global_active_power <- as.numeric(electric$Global_active_power)
png("/Users/wakas/Desktop/ExData_Plotting1/Plot1.png")
hist(electric$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()
