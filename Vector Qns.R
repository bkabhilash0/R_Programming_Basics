# Write a R program to create a vector which contains 10 random integer values between -50 and +50.
random_nums <- sample(seq(-50,50),size = 10)
random_nums

# Write a R program to find the maximum and the minimum value of a given vector.
max(random_nums)
min(random_nums)

# Write a R program to create three vectors numeric data, character data and logical data. 
# Display the content of the vectors and their type.

marks <- c(4.5,4.6,4,25,5,4.67)
cat("The type of the vector is",class(marks))
cat("The marks are",marks)

names <- c("Abhilash","Ajay","Hari","Balu")
cat("The type of the vector is",class(names))
cat("The names are",names)

passed <- c(TRUE,TRUE,FALSE,FALSE)
cat("The type of the vector is",class(passed))
passed

# Create vector with elements from 5 to 9 increment by 0.4. 
# Test whether a given vector contains a specified element.

vals <- seq(5,9,0.4)
vals

7.8 %in% vals
10 %in% vals

# Write a R program to add 3 to each element in a given vector. Print the original and new vector
orig <- c(1,2,3,4,5)
cat("Original Vector is",orig)

new_vec <-append(orig,c(6,7,8))
cat("New Vector is",new_vec)

# Name the contents of the vector
names(marks) <- c("OS","DS","DBMS","R","DM","AI")
names(marks)
marks
marks['AI']
