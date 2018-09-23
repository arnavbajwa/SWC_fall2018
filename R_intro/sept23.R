setwd("~/Desktop/SWC_fall2018")


fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  kelvin
}

print(paste('boiling point of water:',fahr_to_kelvin(212)))


fahr_to_Kelvin(32)
print(paste('Boiling point of water:', fahr_to_Kelvin(212)))

kelvin_to_celsius <- function(temp) {
  celsius <- temp -273.15
  celsius
}

print(paste("Absolute zero in celsius:", kelvin_to_celsius(0)))

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_Kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}

print(paste("Freezing point of water in celsius", fahr_to_celsius(32.0)))

fence<-function(original, wrapper)
{
  result<-paste0(wrapper,original,wrapper)
  return(result)
}

fence("James","____")

# 1st script 

#
filename <- 'C:/Users/Arnav Bajwa/Desktop/SWC_fall2018/Data/gapminder.txt'

#read the data file 
gapminder<-read.table(filename,header=TRUE)
#header=TRUE to say the file has a header so it doesn't count the header as a data member to avoid confusion 

#select the rows for the country Albania is and store it 
albaniaData<-gapminder[gapminder$country=="Albania",]

#select the column for GDP from albaniaData
albaniaGDP <- albaniaData$gdpPercap
albaniaGDP

#compute the average GDP for the country over the years
albaniaAvgGDP <- mean(albaniaGDP)
albaniaAvgGDP
print(paste("The average GDP for Albania is ",albaniaAvgGDP))


#2nd script 
#This script computes the average GDP for a country using 

#clear old variables 
rm(list=ls())

#location of the data 
filename <- 'C:/Users/Arnav Bajwa/Desktop/SWC_fall2018/Data/gapminder.txt'
#read the data file 
gapminder<-read.table(filename,header=TRUE)

getAvgGDPPerCapita<-function(country,gapminder)
{
  selectedCountryData <- gapminder[gapminder$country==country,"gdpPercap"]
  mean(selectedCountryData)
}
gdpUSA<-getAvgGDPPerCapita("United_States",gapminder)
gdpUSA
gdpCanada<-getAvgGDPPerCapita("Canada",gapminder)
gdpMexico<-getAvgGDPPerCapita("Mexico",gapminder)

print(paste("GDP per cap of USA is",gdpUSA))
print(paste("GDP per cap of Canada is",gdpCanada))
print(paste("GDP per cap of Mexico is",gdpMexico))
