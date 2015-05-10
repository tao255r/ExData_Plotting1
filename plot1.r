#plot 1
data<-read.table("C:\\Users\\TTao\\Documents\\TerenceFile\\Coursera_R\\household_power_consumption.txt", na.strings = "?", sep=';', header=TRUE)
data$Date<-as.Date(data$Date,"%d/%m/%Y")
sub<-data[which(data$Date=='2007-02-02'|data$Date=='2007-02-01'),]
hist(sub$Global_active_power, col='red', main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,'plot1.png',width=480, height=480)
dev.off()