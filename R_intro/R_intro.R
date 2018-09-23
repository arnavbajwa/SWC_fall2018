print("Wow")
#Building blocks of R 

#variabe/object operator <- 

name <-"Jane"
name 
print(name)
price <-3.99
price

ls() #list
rm(price)#remove
rm(list=ls()) #remove all

#functions 
mass <-64 #variable mass
mass
sqrt(mass) #function with variable as argument 
res <-sqrt(mass)
res

#getwd()function 
getwd()

#using the help tab 
#?plothelp("mean")

#***challenge 2.1***
mass <-47.5
age <-122
height<-150

mass<-mass*2.3
age<-age-20
height<-height+20

#additional packages
install.packages("knitr")
library(knitr)

###Data types and Data structures
#single element data structure: smallest in R
age<-45
#useful functions 
length(age)
str(age)

score<-79
is.integer(score)
typeof(score)
#nested function
typeof(is.integer(score))
#challenge 2.2
score<-79
score
#find the output of 
is.logical(is.numeric(typeof(is.integer(score))))

step1<-is.integer(score)
step1
step2<-typeof(step1)
step2
step3<-is.numeric(step2)
step3
step4<-is.logical(step3)
step4
v <- c(1:3)
v
v<-c(1,2,3,45)
v


#examine the object
length(v)
str(v)

#view parts of data/vector
head(v,n=2)
tail(v,n=3)

#manipulate
v1<-2*v
v1

#add a vector
#create v2 and then add v2 to v1
v2<-c(1:5)
v2
v3<-v1+v2
v3
#caharacter vector
v4<-c("Jane","John","Farah")
v4
typeof(v4)
#change data type
v3<-as.character(v3)
v3
typeof(v3)
str(v3)

#matrices, factors,list*** challenge
#matrices: 2D vectors
#to create matrices we use the matrix function 
m<-matrix(c(1:18),3,6)
m
dim(m)
#factor
#special vectors used to represent categorical data 
#to create a factor we use a factor function 
continent<-factor(c("Asia","America","Europe"))
continent
str(continent)
#Lists: generic vectors-collection of elements 
#with different data types-numerical and char 
l<-list("Afghanistan","Albania",1952,876897)
l
typeof(l)
###Challenge2.3###
el1<-(c("Chicken","Soup","Salad","Tea"))
el1
el2<-factor(c("solid","liquid","solid","liquid"))
el2
el3<-c(4.99,2.99,3.29,1.89)
el3
myorder<-list(el1,el2,el3)

#Data Frame
myorder<-list(el1,el2,el3)
myorder_df<-data.frame(el1,el2,el3)
myorder_df



######## PART 2 ##########

#Subsetting 
#Type 1: Positional Index:-

v<-c(1:10)
v[2]
v[c(3:6)]
v[3:6]

myorder_df[1]
myorder_df[(1)]
typeof(myorder[1])
typeof(myorder[(1)])

#data_frame[row,coliumn]
myorder_df[1:3,]

#subset by name 
myorder_df$el1

#subset by logical vectors: 

#####
# >-greater than 
# <-less than 
# ==equal to 
# >=greater than or equal to 
# <=less than or equal to 

v<-c(5,1,3,4,5)
v[v==5]
myorder_df
df1<-myorder_df[myorder_df$el2=="solid",]
df1

df2<-myorder_df[myorder_df$el3>3,]
df2

df3<-myorder_df[myorder_df$el2=="solid"]
df3

##gapminder dataset
 myData<-read.table("C:\\Users\\Arnav Bajwa\\Desktop\\SWC_fall2018\\Data\\gapminder.txt")
myData

#for .csv files use read.csv()
str(myData)

unique(myData[,1])
unique(myData$V1)

myData[,c(3,5)]
