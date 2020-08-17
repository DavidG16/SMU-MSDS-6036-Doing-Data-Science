# Unit 1 R Review p2
# Basic Visialization
# David Grijalva 

# Using the iris data make a scatter plot of the petal length vs sepal length
plot(iris$Petal.Length, iris$Sepal.Length, pch=5,  xlab = "Petal Length",
     ylab = "Sepal Length", main = "Irish Petal vs Sepal Length")

# plot only virginica
irisVir = iris[iris$Species=="virginica",]
plot(irisVir$Petal.Length, irisVir$Sepal.Length, pch=5, col='blue',  xlab = "Petal Length",
     ylab = "Sepal Length", main = "Virginica Petal vs Sepal Length", 
     ylim = c(0,10), xlim = c(0,8 ))

# add versicolor 
irisVer = iris[iris$Species=="versicolor",]
points(irisVer$Petal.Length, irisVer$Sepal.Length, col = "red")

# add setosa
irisSet = iris[iris$Species=="setosa",]
points(irisSet$Petal.Length, irisSet$Sepal.Length, col = "green")

# to start a new plot
dev.off()

# histogram
hist(mpg$cty, col="blue")


# dividing the ploy space c(num rows, num columns)
par(mrow - x(1,2))
dev.off()

# histogram of the iris sepal lengths

hist(iris$Sepal.Length, col="blue", main="Iris Sepal Length Distribution",
     xlab="Length")

# barplot
age = c(22,21,24,19,20,23)
yrs_math_ed = c(4,5,2,5,3,5)
names = c("Mary","Martha","Kim","Kristen","Amy","Sam")
subject = c("English","Math","Sociology","Math","Music", "Dance")

df3 = data.frame(Age=age, Years=yrs_math_ed, Name=names, Subject=subject)

barplot(df3$Years, names.arg = df3$Name, ylab='Math Years', main="Math Years")

install.packages("ggplot2")

library(ggplot2)
mpg

pairs(~mpg+disp+drat+wt,data=mtcars,
      main="Simple Scatterplot Matrix")
