# source("C:/Users/Roy/r_projects/eda/ExData_Plotting1/make_plots.R")
setwd("C:/Users/roy/r_projects/eda/ExData_Plotting1")
hpc <- read.table(file = 'data/household_power_consumption.txt'
              , header = TRUE
              , sep = ';'
              , na.strings = "?")
#               , skip = 21997 <-- kills the header read?

hpc <- subset(hpc, Date %in% c('1/2/2007', '2/2/2007'))
hpc$dt <- as.POSIXct(strptime(paste(hpc$Date, hpc$Time), format = '%d/%m/%Y %H:%M:%S'))

png(file = "plot2.png")
with(hpc, plot(dt, Global_active_power, type="n", main = "", xlab = "", ylab = "Global Active Power"))
with(hpc, lines(dt, Global_active_power))
dev.off()
