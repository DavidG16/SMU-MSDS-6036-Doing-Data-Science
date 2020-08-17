# Unit 1 R Review Part 3.R
# Statistics
# David Grijalva
# This code is part 3 out of 3 of a breife demo to basic R functions

# draw a sample from a standard normal distribution
# run many times varying samle size and look at histogram and mean

sample1= rnorm(1000,0,1) # number od samples, mean, sd
hist(sample1)
mean(sample1)
sd(sample1)

# another way to code the same thing
population =  rnorm(10000000, 0, 1)
hist(population)
sample1 = sample(population,100) # sample size of 100
hist(sample1)
mean(sample1)
sd(sample1)

# now make a function in which you pass the sample size, the number of samples 
# to 

xBarVec = c() # Global vector to hold the sample means
population =  rnorm(10000000, 0, 1)


####
# Function XbarGenerator
# Arguments: samplesize: the size of the sample that each sample mean is based on
#            number_of_samples: Number of samples this means we will generator
#####

xbarGenerator = function(sampleSize=30, number_of_samples=100)
{
  for (i in 1:number_of_samples)
  {
    theSample = sample(population, sampleSize)
    xbar = mean(theSample)
    xBarVec = c(xBarVec, xbar)
  }
  return(xBarVec)
}


# Run the function
xbars = xbarGenerator(300, 1000)
length(xbars)
hist(xbars)


# create function
newXbarGenerator = function(sampleSize = 50, number_of_samples=1000,
                            mean=60, sd=10)
{
  xBarVec = c() # Global vector to hold the sample means
  population =  rnorm(10000000, mean, sd)
  
  for (i in 1:number_of_samples)
  {
    theSample = sample(population, sampleSize)
    xbar = mean(theSample)
    xBarVec = c(xBarVec, xbar)
  }
  return(xBarVec)
}

xbars = newXbarGenerator(50, 1000, 60, 10)
length(xbars)
hist(xbars)

