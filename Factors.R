#  Write a R program to find the levels of factor of a given vector. 
gender <- factor(c("Male",'Male','Female','Male','Female','Female'))
class(gender)
levels(gender)
str(gender)

# Write a R program to change the first level of a factor with another level of a given factor.
levels(gender)[1] = "Other"
gender
class(gender)
levels(gender)
str(gender)

# Write a R program to create a factor from data consisting of the names of months. 
# Also display the count of instances of each levels in the created factor.

months_fac <- c("March","April","January","November","January",
                 "September","October","September","November","August","February",
                 "January","November","November","February","May","August","February",
                 "July","December","August","August","September","November","September",
                 "February","April")
months_fac <- factor(months_fac)

months_fac
levels(months_fac)
table(months_fac)

#  Consider the factor responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree")).
# Later it was found that new a level "Strongly Disagree" exists. 
# Write an R expression that will include "strongly disagree" as new level attribute of the factor.

responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))
levels(responses)
levels(responses) <- c(levels(responses),"Strongly Disagree")
levels(responses)

# If x <- factor(c("high", "low", "medium", "high", "high", "low", "medium")), 
# write an R expression that will provide unique numeric values for various levels of x with the following output:
# levels value
# 1 high 1
# 2 low 2
# 3 medium 3


x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))
table(x)
unique(x)
as.numeric(unique(x))

data.frame(levels=unique(x),value=as.numeric(unique(x)))
