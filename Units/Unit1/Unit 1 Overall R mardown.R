# Unit 1 R Review Part 1.R
# R Data Import Structure and Manipulation
# David Grijalva
# This code part 1 of 3 parts of a bried demo to basic R functions

# Vectors
age = c(22,21,24,19,20,23)
age
age[2]
yrs_math_ed = c(4,5,2,5,3,5)
yrs_math_ed

# data frames

df1 = data.frame(Age=age, Years= yrs_math_ed)
df1[4,2] # data in the 4th row and second column
df1[1,] # all data in the 1st row
df1$Years # all the data in the fourth column
str(df1) # will return information about columns


a = c("Mary", "Martha","Kim","Kristen","Amy","Sam")
b = c("English","Math","Sociology","Math","Music","Dance")

# Make another dataframe
df2 = data.frame(Name=a, Major=b)
df2

# Make another data frame
df3 = data.frame(Age=age, Years=yrs_math_ed)
df3

# Cbind combines columns
df4 = cbind(df1,df2)
df4

# str and class show what type of variable it is
str(df4)
class(df4$name)
summary(df4)

# define a new row / student
d = c(19,4,"John","Math")

# attempt to add a row
df5 = rbind(df4,d)
# This will run into a problem because its trying to a dd a new name

# try and fix the probem
dfCopy = df4
dfCopy$Name = as.character(df$Name)
dfCopy$Major = as.character(df4$Major)
summary(dfCopy)

# add the student to the end of the data frame
df5 = rbind(dfCopy,d)
df5

# recheck the class
str(df5)
summary(df5)

# fix the classes
df5$Age = as.numeric(df5$Age)
df5$Years = as.numeric(df5$Years)
summary(df5)
df5$Name = as.factor(df5$Name)
df5$Major = as.factor(df5$Major)
summary(df5)

str(df5)

# Filter the data frame
# All students with more than 4 years of Math
df5[df5$Years > 4,]
# All students with more than 4 years of Math and are 21 eyars of age or older
df5[(df5$Age >= 21 & df5$Years > 4),]
# All students that are majoring in Math
df5[df5$Major == "Math",]

# Import data

#Example1 = read.csv( path, header= True)
# Example2 = read.csv(file.choose(), header= True)

# Data that comes from external packages
# mpg is a dataset that comes in the ggplot2 package, may have to load it with data(mpg)
# mpg Field economy data from 1999 and 2008 for 38 popular car models

