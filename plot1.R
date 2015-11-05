energy<-read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", as.is=TRUE)
energy$Date<-as.Date(strptime(energy$Date,"%d/%m/%Y"))
a1<-grep("2007-02-01", energy$Date)
a2<-grep("2007-02-02", energy$Date)
energy.all<-energy[a1[1]:a2[length(a2)],]

#PLot1
png("Plot1.png", width = 480, height = 480 )
hist(as.numeric(energy.all$Global_active_power)
     , col="red"
     , main="Global Active Power"
     ,xlab="Global Active Power (kilowatts)"
     
)

dev.off() 