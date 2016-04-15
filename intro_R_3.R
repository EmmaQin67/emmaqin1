setwd("~/Desktop/software-carpentry-2016/data-files/r-lesson/data")
list.files()

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze("inflammation-01.csv")


#make sure you document your fuction

#For loops
best_practice<-c("Let","the","computer","do","the","work")
best_practice
print_words<-function(sentence){
  #function prints a sentence
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}
print_words(best_practice)
print_words(best_practice[-6])

print_words<-function(sentence){
  for(word in sentence){
    print(word)
   }
  }
}

print_words(best_practice)
print_words(best_practice[-6])

#the for loop always know the length of the 
#How does R know word and sentence? word and sentence are only known by the for loop
#for (variable in collection){
#do things with variable
#}

len<-0
vowels<-c("a","e","i","o","u")
for(v in vowels){
  len<-len+1
  print(v)
}
len

letter<-"z"
for(letter in c("a","b","c")){
  print(letter)
}


naturalN <- function(x){
 natural <-  seq(x)
for(x in natural){
  print(x)
  }
}

naturalN(3)
seq(6)

print_N<-function(natural_number){
  #function prints natural numbers
  #input is a number
  container_of_numbers<-seq(natural_number)
  for(x in container_of_numbers){
    print(x)
  }
}
print_N(10)



#loop through file analysis
list.files()
Sys.glob("*.csv")
Sys.glob("i*.csv")
list.files(pattern="inflammation")

#Glob my files
filenames<-Sys.glob("i*.csv")

#Run the analysis on each file
for(file in filenames){
  print(file)
  analyze(file)
}
