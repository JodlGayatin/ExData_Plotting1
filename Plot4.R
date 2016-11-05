voltage1<-data1$Voltage
grp1<-data1$Global_reactive_power
voltage1<-as.data.frame(voltage1)
grp1<-as.data.frame(grp1)
plot4<-cbind(plot3,voltage1,grp1)
par(mfcol = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0,0,2,0))
plot(plot2$z1,plot2$b1,type="l", xlab="", 
     ylab="Global Active Power")
plot(plot3$z1,plot3$sub1,type="l", xlab="", ylab= "Energy sub metering")
lines(plot3$z1,plot3$sub2,col="red")
lines(plot3$z1,plot3$sub3,col="blue")
legend("top",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1), 
       lwd=c(2,2,2),col=c("black","red","blue"), yjust=1, cex=0.5)
plot(plot4$z1,plot4$voltage1,type="l",xlab="datetime",ylab="Voltage" )
plot(plot4$z1,plot4$grp1,type="l",xlab="datetime",ylab="Global Reactive Power" )
dev.copy(png, file = "Plot4.png")
