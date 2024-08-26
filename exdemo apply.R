v<-c(1,2,3,55)
rand<-function(x){
  ran<-sample(1:10,4)
  return(paste0(x," ", ran," = ", x+ran))
}

print(rand(v))
#######################
v<-c(1,2,3,55)
rand<-function(x){
  ran<-sample(1:10,2)
  return(x+ran)
}

print(lapply(v,rand))
######################
install.packages('dplyr')
install.packages('nycflights13')
library(dplyr)
library(nycflights13)

#FILTER
print(head (filter(flights,month==11,day==3,carrier=='AA')),width = 200)
#SLICE

slice(flights,1:10)