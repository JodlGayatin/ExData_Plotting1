data1<-data1[6001:11000,]
data1set<-data1[637:3516,]
histdata<-data$Global_active_power
hist(histdata,col="red",nclass = 12,xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", main = "Global Active Power")