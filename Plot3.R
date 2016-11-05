mutate(data1,datetime=paste(data1$Date,data1$Time))
z<-data1$datetime
z1<-strptime(z, "%d/%m/%y %H:%M:%S")
z1<-as.data.frame(z1)
b1<-data1$Global_active_power
plot2<-cbind(b1,z1)
plot3<-cbind(plot2,sub1,sub2,sub3)
plot(plot3$z1,plot3$sub1,type="l", xlab="", ylab= "Energy sub metering")
lines(plot3$z1,plot3$sub2,col="red")
lines(plot3$z1,plot3$sub3,col="blue")
legend("top",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), 
        lwd=c(2,2,2),col=c("black","red","blue"), yjust=1, cex=1)
dev.copy(png, file = "Plot3.png")