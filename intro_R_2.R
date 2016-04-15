#4_14_2016
#programming with R
#creating functions


#detach is a function you can you to clear

#set directory
setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/data")
read.csv()
str(read.csv)
temp<-67

#fahrenheit to kelvin:
fahr_to_kelvin<-function(temp){
  kelvin<-((temp-32)*(5/9)+273.15)
  return(kelvin)
}
fahr_to_kelvin(67)
fahr_to_kelvin(temp)

#
kelvin_to_celcius<-function(temp){
  celcius<-temp-273.15
  return(celcius)
}
kelvin_to_celcius(0)

fahr_to_celcius<-function(temp){
  temp_k<-fahr_to_kelvin(temp)
  result<-kelvin_to_celcius(temp_k)
  return(result)
}
fahr_to_celcius(32)

best_practice<-c("Write","programs","for","people","not","computers")
asterisk<-"***"
fence<-function(original, wrapper){
  return(c(wrapper, original, wrapper))
}
fence(best_practice, asterisk)
fence(asterisk,best_practice)
