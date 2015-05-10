#plot 2
data<-read.table("C:\\Users\\TTao\\Documents\\TerenceFile\\Coursera_R\\household_power_consumption.txt", na.strings = "?", sep=';', header=TRUE)
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date<-as.Date(data$Date,"%d/%m/%Y")
sub<-data[which(data$Date=='2007-02-02'|data$Date=='2007-02-01'),]
plot(sub$DateTime,sub$Global_active_power,type = "l",xlab='',ylab="Global Active Power (kilowatts)")
dev.copy(png,'plot2.png',width=480, height=480)
dev.off()