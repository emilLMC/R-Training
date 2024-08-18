#Example: Write a script that prints "Hello" if the variable x is equal to 1:# 
# Solution:
x<-1
if(x==1){
  print('Hello')
}
########################################################################################
# Ex 1: Write a script that will print "Even Number" if the 
# variable x is an even number, otherwise print "Not Even":
# SoluTION:
x<-3
if(x%%2==0){
  print("Even Number")
}else{
  print("Not Even")
}
########################################################################################
# Ex 2: Write a script that will print 'Is a Matrix' if the variable x 
# is a matrix, otherwise print "Not a Matrix". 
# Hint: You may want to check out help(is.matrix)
# Solution
x <- matrix()
if(is.matrix(x)){
  print("Is a Matrix")
}else{
  print("Not a Matrix")
}
########################################################################################
#Ex 3: Create a script that given a numeric vector x with a length 3, will 
# print out the elements in order from high to low. You must use if,else if, 
# and else statements for your logic. (This code will be relatively long)
x <- c(3,7,1)
if(x[1]>x[2]){
first<-x[1]
sec<-x[2]
} else{
  first<-x[2]
  sec<- x[1]
} 

if(x[3]>first & x[3]>sec){
  first<-x[3]
  sec<-first
  thir<-sec
} else if (x[3]<first & x[3]<sec){
  thir<-x[3]
}