## The required dates 01/02/2007 to 02/02/2007 are between the 6001st and 11000th row of the main data
## we further trim it to row #637-3516 to get the relevant data which is a total of 2880 observations
## For some some reason the dplyr filter function does not seem to work when I use Date == 01/02/2007 | Date==02/02/2007 so I had to
## identify the rows instead
data1<-data1[6001:11000,]
data1set<-data1[637:3516,]
histdata<-data$Global_active_power
hist(histdata,col="red",nclass = 12,xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", main = "Global Active Power")