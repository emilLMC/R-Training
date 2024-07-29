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
d
