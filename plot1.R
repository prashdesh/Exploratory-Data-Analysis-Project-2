# set working directory where input files are stored
setwd("c:\\users\\pdhingra\\Documents\\Coursera\\Exploratory-Data-Analysis\\Project\\")

# - 1.Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

#  Read Data  
NEI <- readRDS("summarySCC_PM25.rds") 


 #  Generate Plot-Data 
 pd <- aggregate(NEI[c("Emissions")], list(year = NEI$year), sum) 
 

 #  Generate Plot 1 
 

 png('plot1.png', width=480, height=480) 
 plot(pd$year, pd$Emissions, type = "l",    main = "Total Emissions from PM2.5 in the US", xlab = "Year", ylab = "Emissions") 
 

 

 dev.off() 

