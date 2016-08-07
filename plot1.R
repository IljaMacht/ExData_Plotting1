setwd("D:/Docu/Coursera/Data Science Spec/4_Exploratory Data Analysis/Course Project")

# read only column names first
columnNames <- as.vector(as.matrix(read.table("household_power_consumption.txt",header=FALSE,nrows=1,sep=";")))

#read only the data for Feb 1st and 2nd
feb <- read.table("household_power_consumption.txt",header=FALSE,skip=66637,nrows=2880,sep=";",col.names = columnNames)

#separate only the variable needed
gac <- feb$Global_active_power

# create the histogram with appropriate colors and labels
hist(gac,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency")

# copy the plot to .png file and close the png device
dev.copy(png,file="plot1.png")
dev.off()