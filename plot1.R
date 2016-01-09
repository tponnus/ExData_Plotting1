edadata<-"household_power_consumption.txt"
edadata<-read.table(edadata,header=TRUE,sep=";",stringsAsFactors = FALSE, dec=".")
requireddata<-edadata[edadata$Date %in% c("1/2/2007","2/2/2007"),]
plot1<-as.numeric(requireddata$Global_active_power)
png("plot1.png",width=480,height=480,units = "px", bg = "transparent")
hist(plot1,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency",breaks = 12, ylim = c(0, 1200))
dev.off()
