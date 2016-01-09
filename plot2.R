edadata<-"household_power_consumption.txt"
edadata<-read.table(edadata,header=TRUE,sep=";",stringsAsFactors = FALSE, dec=".")
requireddata<-edadata[edadata$Date %in% c("1/2/2007","2/2/2007"),]

dtmergetm<-strptime(paste(requireddata$Date,requireddata$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
plot2<-as.numeric(requireddata$Global_active_power)

png(filename = "plot2.png",width = 480, height = 480,units = "px", bg = "transparent")
plot(dtmergetm,plot2,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
