mutate(data1,datetime=paste(data1$Date,data1$Time))
z<-data1$datetime
z1<-strptime(z, "%d/%m/%y %H:%M:%S")
z1<-as.data.frame(z1)
b1<-data1$Global_active_power
plot2<-cbind(b1,z1)
plot(plot2$z1,plot2$b1,type="l", xlab="", 
     ylab="Global Active Power")
dev.copy(png, file = "Plot2.png")