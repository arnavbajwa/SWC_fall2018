#PlotlifeExp.Rscript

myDataFull<-read.table("C:\\Users\\Arnav Bajwa\\Desktop\\SWC_fall2018\\Data\\gapminder.txt",header=TRUE)

#subset canada only 
Canada<-myDataFull[myDataFull$country=="Canada",]

#plot
plot(Canada$year,Canada$lifeExp, col="blue",type="l")
Canada
