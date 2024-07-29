######################################### 
# Ex 1: Create 2 vectors A and B, where A is (1,2,3) 
# and B is (4,5,6). With these vectors, use the cbind() or 
# rbind() function to create a 2 by 3 matrix from the vectors. 
# You'll need to figure out which of these binding functions isthe correct choice.
A<- c(1,2,3)
B<-c(4,5,6)
cbind(A,B)
#Correct answer is this (easy solution)
rbind(A,B)
#Longer route to the answer below
c<-c(A,B)
d<-matrix(c,byrow=T,nrow=2)
rownames(d)<-c("A","B")
print(d)
######################################### 
# EXERCiSE 2
# Ex 2: Create a 3 by 3 matrix consisting of the numbers 1-9. 
# Create this matrix using the shortcut 1:9 and 
# by specifying the nrow argument in the matrix() function call.
# Assign this matrix to the variable mat
# JFYI - to delete a variable rm(three)
mat<-matrix(1:9,nrow=3)
print(mat)
######################################### 
#EXeRciSE 3 : Confirm that mat is a matrix using is.matrix()

print(is.matrix(mat))

######################################### 
# Ex 4: 
# Create a 5 by 5 matrix consisting of the numbers 1-25 
# and assign it to the variable mat2. The top row should be the
# numbers 1-5.
mat2<-matrix(1:25,nrow=5,byrow = T)
print(mat2)
######################################### 
# Ex 5: Using indexing notation, grab a sub-section of mat2 
# from the previous exercise that looks like this:
# [7,8]
# [12,13]
mat2[2:3,2:3]
#########################################
#EX 6:  Using indexing notation, grab a sub-section of mat2 
# from the previous exercise that looks like this:
#   [19,20]
# [24,25]

print(mat2[4:5,4:5])