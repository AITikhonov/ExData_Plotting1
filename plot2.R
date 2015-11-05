energy<-read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", as.is=TRUE)
energy$Date<-as.Date(strptime(energy$Date,"%d/%m/%Y"))
a1<-grep("2007-02-01", energy$Date)
a2<-grep("2007-02-02", energy$Date)
energy.all<-energy[a1[1]:a2[length(a2)],]

#Plot2
png("Plot2.png", width = 480, height = 480 )
plot.ts(as.numeric(energy.all$Global_active_power)
        #, x=energy.all$Date
        , main=""
        #  ,pch="line"
        ,ylab="Global Active Power (kilowatts)"
        ,xlab=""
)
dev.off() 