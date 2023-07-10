# Factors, Vectors, List, Arrays, Matrices, Data Frame
# Factor is for storing Categorical Values

a <- c(10,20,30)
class(a)

typeof(a)
class(as.integer(a))

typeof(as.integer(a))

print(2:10)
print(seq(1,10,by=2))

seq(1,10,length.out=5)
seq(1,5,length.out=10)

marks <- c(4.5,4.6,4,25,5,4,67)
cat("The marks are",marks)

names <- c("Abhilash","Ajay","Hari","Balu")
cat("The names are",names)

passed <- c(TRUE,TRUE,FALSE,FALSE)
passed

sample(seq(1,10000),size = 20)
length(names)
sample(seq(1,10000),size = 20,replace = TRUE)
names[passed]

names[0]
passed[c(TRUE,TRUE,TRUE,FALSE)]
names[2:4]
names[c(2,4)]
names[-2]
names[c(-2,-4)]

fruits <- c("apple"=1,"orange"=2,"grapes"=3)
fruits["apple"]
fruits[1]

num1 <-c(1,2,3,4,5)
num2 <- c(6,7,8,9,10)

c(num1,num2)

# List
cvec <- c("a","b","c")
nvec <- c(1,2,3)
lvec <- c(TRUE,FALSE,TRUE)

l1 <- list(cvec,nvec,lvec)

print(l1)

l2 <- list(1,c(10,20),c("hello","bye"),"Hello World")
l2
