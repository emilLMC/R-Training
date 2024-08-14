# Ex 1: Recreate the following dataframe by creating vectors and 
# using the data.frame function:
# 
# Age	Weight	Sex
# Sam	22	150	M
# Frank	25	165	M
# Amy	26	120	F
#SOLUTION:
Name <- c("Sam","Frank","Amy")
Age <- c(22,25,26)
Weight <- c(150,165,120)
Sex <- c("M", "M", "F")
df <- data.frame (row.names = Name, Age, Weight, Sex)
##########################################################
# Ex 2: Check if mtcars is a dataframe using is.data.frame()
#SOLUTION
is.data.frame(mtcars)
##########################################################
#Ex 3:Use as.data.frame() to convert a matrix into a dataframe:
#
mat <- matrix(1:25,nrow = 5)
as.data.frame(mat)
##########################################################
# Ex 4: Set the built-in data frame mtcars as a variable df. 
#we'll use this df variable for the rest of the exercises.
df<-mtcars
df
##########################################################
# Ex 5: Display the first 6 rows of df
head(df)
df[1:6,]
##########################################################
#Ex 6Ex 6: What is the average mpg value for all the cars?
mean(df$mpg)
#########################################################
# Ex 7: Select the rows where all cars have 6 cylinders (cyl column)
df[df$cyl==6,]
#OR
subset(df,cyl==6)
#########################################################
# Ex 8: Select the columns am,gear, and carb.
df[,c('am','gear','carb')]
#########################################################
# Ex 9: Create a new column called performance, which is 
# calculated by hp/wt.
df$performance<- df$hp/df$wt
head(df)
#########################################################
# Ex 10: Your performance column will have several 
# decimal place precision. 
# Figure out how to use round() 
# (check help(round)) to reduce this accuracy to only 2 decimal places.
df$performance<-round(df$performance,digit=2)
head(df)
#########################################################
# Ex 10: What is the average mpg for cars that have more than 
# 100 hp AND a wt value of more than 2.5.

mean(subset(df,hp>100 & wt>2.5)$mpg)

#########################################################
# Ex 11: What is the mpg of the Hornet Sportabout?
df["Hornet Sportabout",]$mpg

