setwd("D:/Docu/Coursera/Data Science Spec/4_Exploratory Data Analysis/Course Project")

# read only column names first
columnNames <- as.vector(as.matrix(read.table("household_power_consumption.txt",header=FALSE,nrows=1,sep=";")))

#read only the data for Feb 1st and 2nd
feb <- read.table("household_power_consumption.txt",header=FALSE,skip=66637,nrows=2880,sep=";",col.names = columnNames)

#separate only the variable needed
gac <- feb$Global_active_power

# create the plot with appropriate labels
plot(gac,type="l",xaxt="n", ylab = "Global Active Power (kilowatts)",xlab = "")

#add weekdays to x-axis
axis(1,at = c(1,1440,2880), labels = days)

# copy the plot to .png file and close the png device
dev.copy(png,file="plot2.png")
dev.off()