##DPLYR
## EX 1 : Return rows of cars that have an mpg value 
# greater than 20 and 6 cylinders.
## SOLUTION :: 
filter(mtcars,mpg>20,cyl==6)
################################################################################
#EX:2Reorder the Data Frame by cyl first, then by descending wt.
#SOLIUTION::
head(arrange(mtcars,cyl,desc(wt)))
###############################################################################
##Ex:3Select the columns mpg and hp
## SOLUITION : 
head(select(mtcars,mpg,hp))
############################@##################################################
#Ex:4: Select the distinct values of the gear column.
## SOLUTION:

distinct(select(mtcars,gear))
############################@##################################################
#Ex5: Create a new column called "Performance" which is 
# calculated by hp divided by wt.
head(mutate(mtcars,Performance=hp/wt))
############################@##################################################

#EX6: Find the mean mpg value using dplyr.
summarise(mtcars,Avg=mean(mpg))
###############################################################################
# Use pipe operators to get the mean hp value for cars with 6 cylinders.
# Solution
mtcars %>% filter(cyl==6) %>% summarise(mean(hp)) 

