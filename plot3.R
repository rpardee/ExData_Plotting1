# source("C:/Users/Roy/r_projects/eda/ExData_Plotting1/make_plots.R")
setwd("C:/Users/roy/r_projects/eda/ExData_Plotting1")
hpc <- read.table(file = 'data/household_power_consumption.txt'
              , header = TRUE
              , sep = ';'
              , na.strings = "?")
#               , skip = 21997 <-- kills the header read?

hpc <- subset(hpc, Date %in% c('1/2/2007', '2/2/2007'))
hpc$dt <- as.POSIXct(strptime(paste(hpc$Date, hpc$Time), format = '%d/%m/%Y %H:%M:%S'))

png(file = "plot3.png")
with(hpc, plot(dt, Sub_metering_1, type="n", xlab = "", ylab = "Energy sub metering"))
with(hpc, lines(dt, Sub_metering_1, col = "black"))
with(hpc, lines(dt, Sub_metering_2, col = "red"))
with(hpc, lines(dt, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 2, col = c("black", "red", "blue"))
dev.off()
