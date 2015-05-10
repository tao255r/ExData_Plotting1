#Plot 3
data<-read.table("C:\\Users\\TTao\\Documents\\TerenceFile\\Coursera_R\\household_power_consumption.txt", na.strings = "?", sep=';', header=TRUE)
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
sub<-data[which(data$Date=='2007-02-02'|data$Date=='2007-02-01'),]
plot(sub$DateTime,sub$Sub_metering_1,type = "l",xlab='',ylab="Energy sub metering")
lines(sub$DateTime,sub$Sub_metering_2,type = "l",col='red')
lines(sub$DateTime,sub$Sub_metering_3,type = "l",col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"), cex=.75, xjust=1)
dev.copy(png,'plot3.png',width=480, height=480)
dev.off()