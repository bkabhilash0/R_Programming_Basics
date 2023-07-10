#    Extract Sepal.Length from the �iris� dataset and call the resulting vector mysepal.
#Get the summation, mean, median, max and min of mysepal. Get the summary of mysepal and compare the results with the former.

data(iris)

summary(iris)
mysepal<-iris$Sepal.Length
mysepal

#Compute the range of values for the sepal length using a user defined function for the Iris Dataset.

range_iris<-function(x){
  range_values<-max(x)-min(x)
  return(range_values)
  
}

sepl_range<-range_iris(mysepal)

sepl_range
cat('range of sepal length is :',sepl_range)


#Compute the measures of central tendency (Mean, Median, Mode) of sepal length in the Iris Dataset

mean_sepal <- mean(mysepal)

# Compute the median of sepal length
median_sepal<- median(mysepal)

mode_sepal_length <- function(x) {
  unique_values <- unique(x)
  frequencies <- tabulate(match(x, unique_values))
  mode_value <- unique_values[which.max(frequencies)]
  return(mode_value)
}


mode_sepl<-mode_sepal_length(mysepal)


cat("Mean of Sepal Length:", mean_sepal, "\n")
cat("Median of Sepal Length:", median_sepal, "\n")
cat("Mode of Sepal Length:", mode_sepl, "\n")



range_sepal_length <- max(mysepal) - min(mysepal)


IQR_sepal_length <- IQR(mysepal)

# Compute the mean deviation of sepal length
mean_deviation_sepal_length <- mean(abs(mysepal- mean(mysepal)))

# Compute the standard deviation of sepal length
standard_deviation_sepal_length <- sd(mysepal)

# Print the results
cat("Range of Sepal Length:", range_sepal_length, "\n")
cat("Interquartile Range of Sepal Length:", IQR_sepal_length, "\n")
cat("Mean Deviation of Sepal Length:", mean_deviation_sepal_length, "\n")
cat("Standard Deviation of Sepal Length:", standard_deviation_sepal_length, "\n")



q1 <- quantile(mysepal, probs = 0.25)
q3 <- quantile(mysepal, probs = 0.75)

cat('first quartile:',q1,'second quartile:',q3)





data <- seq(from = 10, to = 100, by = 10)

# Calculate the 10th and 90th percentiles
percentile_10 <- quantile(data, probs = 0.1)
percentile_90 <- quantile(data, probs = 0.9)

cat("10th percentile:", percentile_10, "\n")
cat("90th percentile:", percentile_90, "\n")





# Create the sample data
data1 <- c(5, 1, 3, 9, 7, 1, 6, 11, 5, 1, 1, 3, 2, 1, 8)

mode_result <- mode(data1)

# Compute the frequencies of elements using the table() function
frequency_table <- table(data1)


cat("Mode:", mode_result, "\n")
cat("Frequency Table:\n")
print(frequency_table)


data("LakeHuron")
LakeHuron



percentile_90 <- quantile(LakeHuron, probs = 0.9)

# Compute the 1st, 2nd, and 3rd quartiles
quartiles <- quantile(LakeHuron, probs = c(0.25, 0.5, 0.75))

# Compute the minimum and maximum values
minimum_value <- min(LakeHuron)
maximum_value <- max(LakeHuron)

# Compute the mean and median
mean_value <- mean(LakeHuron)
median_value <- median(LakeHuron)

# Print the results
cat("90th percentile:", percentile_90, "\n")
cat("1st quartile:", quartiles[1], "\n")
cat("2nd quartile (median):", quartiles[2], "\n")
cat("3rd quartile:", quartiles[3], "\n")
cat("Minimum value:", minimum_value, "\n")
cat("Maximum value:", maximum_value, "\n")
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")

