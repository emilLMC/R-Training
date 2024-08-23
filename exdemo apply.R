v<-c(1,2,3,55)
rand<-function(x){
  ran<-sample(1:10,4)
  return(paste0(x," ", ran," = ", x+ran))
}

print(rand(v))
#######################
v<-c(1,2,3,55)
rand<-function(x){
  ran<-sample(1:10,4)
  return(ran)
}

print(lapply(v,rand))
