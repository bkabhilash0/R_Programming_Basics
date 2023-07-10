# Write a R program to create a data frame from four given vectors. 
# Get the statistical summary and structure of the above data frame.

students <- data.frame(
  stu_id = c(1:5),
  name = c("Abhilash","Ajay","Akshaya","Aleena","Amal"),
  dob = as.Date(c("2001-05-27","2001-08-10","2000-02-10","2001-08-10","2002-01-10")),
  stringsAsFactors = FALSE
)

students

# Write a R program to create a Data Frames which contain details of 5 employees.
# Extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.

emp <- data.frame(
  emp_id = c(1:5),
  name = c("Abhilash","Ajay","Akshaya","Aleena","Amal"),
  dob = as.Date(c("2001-05-27","2001-08-10","2000-02-10","2001-08-10","2002-01-10")),
  salary = c(50000,60000,70000,80000,90000),
  stringsAsFactors = FALSE
)
emp

emp[c(3,5),c("name","salary")]

#Add a new row and a column in employee data frame. Also illustrate how row/columns can be removed.

emp["experience"] <- c(1,2,3,4,5)
emp
emp <- rbind(emp,c(6,"Anitha","2001-03-08",100000,6))
emp

# Remove a col
emp <- subset(emp,select = -c(experience))
emp

# Remove a Row
emp <- emp[c(-6),]
emp

# Sort
emp[order(emp$name,decreasing = TRUE),]

#  Illustrate how two data frames can be combined horizontally and vertically.
emp_2 <- data.frame(
  emp_id = c(6:10),
  name = c("Abhilash","Ajay","Akshaya","Aleena","Amal"),
  dob = as.Date(c("2001-05-27","2001-08-10","2000-02-10","2001-08-10","2002-01-10")),
  salary = c(50000,60000,70000,80000,90000),
  stringsAsFactors = FALSE
)

rbind(emp,emp_2)
cbind(emp,emp_2)


# Create a df with given values

id<-c(1:7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female","female","male","male","female","male")
smoking<-c("no","yes","no","yes","yes","no","yes")
tumour<-c("small","large","medium","large","medium","large","small")

df_2 <- data.frame(id,weight,gender,smoking,tumour)
df_2

subset(df_2,(smoking == "yes") & tumour == "large")

class(df_2)
typeof(df_2)
structure(df_2)
str(df_2)
summary(df_2)

sub <- subset(df_2,select = c(id,tumour))
sub
