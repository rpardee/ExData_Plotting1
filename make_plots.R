# source("C:/Users/pardre1/Downloads/eda/proj1/ExData_Plotting1/make_plots.R")
setwd("C:/Users/pardre1/Downloads/eda/proj1/ExData_Plotting1")
hpc <- read.table(file = 'data/household_power_consumption.txt'
              , header = TRUE
              , sep = ';'
              , na.strings = "?")
#               , skip = 21997 <-- kills the header read?

# hpc <- subset(hpc, Date %in% c('1/2/2007', '2/2/2007'))
hpc <- hpc[hpc$Date %in% c('1/2/2007', '2/2/2007'),]
# hpc$Date <- as.Date(strptime(hpc$Date, format = '%d/%m/%Y'))
