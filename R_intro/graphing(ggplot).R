#set working dir 
setwd(dir='~/Desktop/SWC_fall2018/')

#install ggplot2
install.packages("ggplot2")

#load dependencies
library(ggplot2)

#read input dataset
gapminder <- read.table(file="C:/Users/Arnav Bajwa/Desktop/SWC_fall2018/Data/gapminder.txt",header = T)

#make first ggplot2
ggplot(data= gapminder,aes(x = gdpPercap,y = lifeExp)) + geom_point(colour='red')
?ggplot


#Challenge 1
#make a figure of how life expectancy changes over time 

ggplot(data= gapminder,aes(x = gdpPercap,y = lifeExp)) + geom_point(colour='red')

ggplot(data= gapminder,aes(x = year,y = lifeExp)) + geom_point(colour='red',size=0.2)

#let's change the color of our plots 
ggplot(data = gapminder,aes(x=year,y=lifeExp,color=continent)) + geom_point()

#let's change the color of our plots and specify  line plots 
ggplot(data = gapminder, aes(x=year,y = lifeExp, by = country, color=continent)) + geom_line()

#Challenege 2 
#resverse the order of the line/point layers 

ggplot(data = gapminder, aes(x=year,y = lifeExp, by = country, color=continent)) + geom_line()+geom_point()

ggplot(data = gapminder, aes(x=year,y = lifeExp, by = country, color=continent)) + geom_line()+geom_point()

#statistics

ggplot(data= gapminder,aes(x = gdpPercap,y = lifeExp,color = continent)) + geom_point(alpha = 0.5) + scale_x_log10()

ggplot(data= gapminder,aes(x = gdpPercap,y = lifeExp,color = continent)) + geom_point(alpha = 0.5,color="green") + scale_x_log10() + geom_smooth(method= 'lm',size = 1.5)

#challenge 
#modify the size and color of the opints of the previous example 
starts.with <-substr(x = gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A","Z"),]

ggplot(data = az.countries,aes(x = year, y = lifeExp, color = continent)) + geom_line()+ facet_wrap( ~ country)

#change text lables on plot 
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent))+geom_line() + facet_wrap(~country) + labs(x = 'Year', y = 'Life Expectancy', title = 'Figure 1', color = 'Continent') +
  theme(axis.text.x=element_blank(), axis.ticks.x = element_blank())

#challenge 5 
#make density plot of GDP per capita, filled by continent

ggplot(data = az.countries,aes(x = gdpPercap, color = continent))  + geom_density(alpha = 0.6) + facet_wrap(~continent) + scale_x_log10()
