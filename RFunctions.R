# EXAMPLE 1: Create a function that takes in a name as a string argument, 
# and prints out "Hello name"
#SOLUTION::
hello_Name<-function(name){
  print(paste0("Hello ",name))
}
hello_Name("Leeba")
######################################################################
# EXAMPLE 2: Create a function that takes in a name as a string argument 
# and returns a string of the form - "Hello name"

hello_Name<-function(name){
  ret<-paste0("Hello ",name)
  return(ret)
}
print(hello_Name("Leeba"))
######################################################################
# Ex 1: Create a function that will return the product of two integers.
# SOlution :: 
prod<-function(i,j){
  return(i*j)
}
print(prod(3,4))
######################################################################
# Ex 2: Create a function that accepts two arguments, 
# an integer and a vector of integers. It returns TRUE if the integer 
# is present in the vector, otherwise it returns FALSE. 
# Make sure you pay careful attention to your placement of the return(FALSE) 
# line in your function!

check<-function(i,j)
{
  for(k in j){
    if(k==i){
      return(TRUE)
    }  } 
  return(FALSE)
}
check(20,c(1,2,3))
############################################################################
# Ex 3: Create a function that accepts two arguments, an integer and a 
# vector of integers. It returns the count of the number of occurences of 
# the integer in the input vector.

counter<-function(num,v){
  c<-0
    for (i in v){
      if(i==num){
      c<-c+1  
      } 
    }
  return(c)
}
counter(3,c(1,2,2,3,3,3))

###############################################################################
# Ex 4: We want to ship bars of aluminum. We will create a function that 
# accepts an integer representing the requested kilograms of aluminum for
# the package to be shipped. To fullfill these order, we have small bars 
# (1 kilogram each) and big bars (5 kilograms each). Return the least number 
# of bars needed.
# For example, a load of 6 kg requires a minimum of two bars 
# (1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum of 5 bars
# (3 5kg bars and 2 1kg bars).
## SOLUTION::

bars<-function(kg){
  small_bar<-kg%%5
  big_bar<-(kg-small_bar)/5
 print(paste0(small_bar," Small Bars ",big_bar," Big Bars "))
}

(bars(28))
###############################################################################
# Ex 5: Create a function that accepts 3 integer values and 
# returns their sum. However, if an integer value is evenly divisible by 3, 
# then it does not count towards the sum. Return zero if all numbers are 
# evenly divisible by 3. Hint: You may want to use the append() function.
summ <- function(a,b,c)
{
  out<-c(0)
  if(a%%3!=0){
    out<-append(a,out)
  }
  if(b%%3!=0){
    out<-append(b,out)
  }
  if(c%%3!=0){
    out<-append(c,out)
  }
  return(sum(out))
}

print(summ(1,8,32))
################################################################################
# Ex 6: Create a function that will return TRUE if an input integer is prime.
# Otherwise, return FALSE. You may want to look into the any() function. 
# There are many possible solutions to this problem.
#Solution:: 

prime_check<-function(num){
  if(num==2){
    return(TRUE)
  }
  for(i in 2:(num-1)){
    if(num%%i==0){
      return(FALSE)
    }
  }
  return(TRUE)
}

print(prime_check(5))