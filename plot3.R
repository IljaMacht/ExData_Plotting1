setwd("D:/Docu/Coursera/Data Science Spec/4_Exploratory Data Analysis/Course Project")

# read only column names first
columnNames <- as.vector(as.matrix(read.table("household_power_consumption.txt",header=FALSE,nrows=1,sep=";")))

#read only the data for Feb 1st and 2nd
feb <- read.table("household_power_consumption.txt",header=FALSE,skip=66637,nrows=2880,sep=";",col.names = columnNames)

#separate only the variables needed
sm1 <- feb$Sub_metering_1
sm2 <- feb$Sub_metering_2
sm3 <- feb$Sub_metering_3

#initiate the file device for .png file
png("plot3.png")

# create the plot with appropriate labels
plot(sm1,type="l",xaxt="n", ylab = "Energy sub metering",xlab = "")

#add lines in plot for sub meterings 2 and 3 in appropriate colors
lines(sm2,col="red")
lines(sm3,col="blue")

#add weekdays to x-axis
axis(1,at = c(1,1440,2880), labels = days)

#add legend
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

dev.off()