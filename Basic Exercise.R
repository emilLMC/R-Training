# R Basics Exercise
# We will test you on a few topics:
#   Basic Data Types
# Basic Arithmetic
# Vector
# Vector Operations
# Comparison operators
# Vector Selection and Indexing
# The exercises below should be straightforward if you've reviewed the lecture, don't expect something very challenging yet, this is more of a review to make sure you've understood everything so far! Later on exercises/projects will be more challenging (and a lot more fun!)

# What is two to the power of five?
2^5

#Create a vector called stock.prices with the following data points: 23,27,23,21,34
stock.prices

#Assign names to the price data points relating to the day of the week, starting with Mon, Tue, Wed, etc...
stock.day
stock.prices
#What was the average (mean) stock price for the week? (You may need to reference a built-in function)
mean(stock.prices)

#Create a vector called over.23 consisting of logicals that correspond to the days where the stock price was more than $23
over.23<- stock.prices>23

#Use the over.23 vector to filter out the stock.prices vector and only return the day and prices where the price was over $23
stock.prices[over.23]

#Use a built-in function to find the day the price was the highest
max(stock.prices)

