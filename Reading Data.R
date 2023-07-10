#  Illustration of readline() and scan() with different options for reading the different data types.

age = readline(prompt = "Enter Your Age: ")

cat("The Age is",age)

# Function to read a numeric vector from the console
read_numeric_vector <- function() {
  cat("Enter the elements of the vector (separated by spaces): ")
  input <- readline()
  vector <- as.numeric(strsplit(input, " ")[[1]])
  return(vector)
}

# Function to sort a numeric vector in ascending order and multiply each element by two
sort_and_multiply <- function(vector) {
  sorted_vector <- sort(vector)
  multiplied_vector <- sorted_vector * 2
  return(multiplied_vector)
}

# Main program
vector <- read_numeric_vector()
sorted_and_multiplied <- sort_and_multiply(vector)

cat("Sorted and multiplied vector: ")
print(sorted_and_multiplied)

# Function to read an alphanumeric vector from the console
read_alphanumeric_vector <- function() {
  cat("Enter the elements of the vector (separated by spaces): ")
  input <- readline()
  vector <- strsplit(input, " ")[[1]]
  return(vector)
}

# Function to keep only the numbers in an alphanumeric vector
keep_only_numbers <- function(vector) {
  numbers <- vector[grepl("\\d+", vector)]
  return(numbers)
}

# Main program
vector <- read_alphanumeric_vector()
numbers_only <- keep_only_numbers(vector)

cat("Numbers only: ")
print(numbers_only)
print(as.integer(numbers_only))
cat("Sorted and Multiplied: ",sort_and_multiply(as.integer(numbers_only)))
