energy<-read.table("household_power_consumption.txt", sep=";", header=TRUE, dec=".", as.is=TRUE)
energy$Date<-as.Date(strptime(energy$Date,"%d/%m/%Y"))
a1<-grep("2007-02-01", energy$Date)
a2<-grep("2007-02-02", energy$Date)
energy.all<-energy[a1[1]:a2[length(a2)],]

#Plot4
png("Plot4.png", width = 480, height = 480 )
par(mfrow=c(2,2))

plot.ts(as.numeric(energy.all$Global_active_power)
        , main=""
        ,ylab="Global Active Power"
        ,xlab=""
        )

plot.ts(as.numeric(energy.all$Voltage)
        , main=""
        ,ylab="Voltage"
        ,xlab="datetime"
        )

plot(0)

plot.ts(as.numeric(energy.all$Global_reactive_power)
        , main=""
        ,ylab="Global reactive Power"
        ,xlab="datetime"
        )
dev.off() 