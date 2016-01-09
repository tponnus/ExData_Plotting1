edadata<-"household_power_consumption.txt"
edadata<-read.table(edadata,header=TRUE,sep=";",stringsAsFactors = FALSE, dec=".")
requireddata<-edadata[edadata$Date %in% c("1/2/2007","2/2/2007"),]

dtmergetm<-strptime(paste(requireddata$Date,requireddata$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
plot3<-as.numeric(requireddata$Sub_metering_1)
plot3a<-as.numeric(requireddata$Sub_metering_2)
plot3b<-as.numeric(requireddata$Sub_metering_3)

png(filename = "plot3.png",width = 480, height = 480,units = "px", bg = "transparent")
plot(dtmergetm,plot3,type = "l",col="black",xlab = "", ylab = "Energy sub metering")
lines(dtmergetm,plot3a, col="red")
lines(dtmergetm,plot3b, col="blue")
legend("topright", col=c("black","red","blue"),c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lwd=1)
dev.off()
