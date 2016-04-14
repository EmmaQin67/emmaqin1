12
#change directory
setwd("Desktop/software-carpentry-2016/data-files/r-lesson/data/")
list.files()
read.csv(file="inflammation-01.csv",header=FALSE)
weight_kg<-55
weight_kg
#convert weight to pounds
weight_kg*2.2
#R can save values to variables
weight_kg<-57.5
weight_kg
#calculate weight in pounds, save to variable weight_lb
weight_lb<-weight_kg*2.2
weight_lb
weight_kg<-100
weight_kg
weight_lb
#when we change the number in weight_kg, it does not necessarily change the value in weight_lb
dat <- read.csv("inflammation-01.csv",header=FALSE)
dat
#save the csv to a matrix called dat and open dat
class(dat)
#data.frame is the type of data of spreadsheet
dim(dat)
#the dimensions of the spreadsheet
#just remember, rows before columns always
dat[1,1]
#shows the top left value of the spreadsheet
dat[30,20]
#how to navigate data in R
dat[1:4,1:10]
#shows the top chunk of data, you can view any chunk of your data by this way, subset chunk of your data
dat[c(3,8,37,56),c(10,14,29)]
#c means combine
dat[5,]
dat[,16]
#each row is a different rapter, each column is a different day
raptor_1<-dat[1,]
max(raptor_1)
min(raptor_1)
max(dat[2,])
#dat $ can let you choose the names of the columns
mean(dat[,7])
median(dat[,7])
sd(dat[,7])
class(raptor_1)
mean(raptor_1)
#you need to know the type of the data, it could be data.frame, numbers, vectors, factors
?apply
#ask help for the fuction apply
apply(dat,1,mean)
#average inflammation of each raptor over the whole time period
avg_day_inflammation=apply(dat,2,mean)
avg_day_inflammation
#any difference between equal sign and arrow sign, assigning values to variables using arrows
animal<-c("m","o","n","k","e","y")
animal[-1]
animal[-4]
animal[-1:-4]
animal[4:1]
plot(avg_day_inflammation)

#plot the max inflammation every day
max_day_inflammation<-apply(dat,2,max)
plot(max_day_inflammation)
#that looks even more suspicious

#plot the min inflammation for every day
min_day_inflammation<-apply(dat,2,min)
plot(min_day_inflammation)

#save this R script and commit it to the Git repository