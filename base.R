a <- 12
print(a)
a=12
print(a)
12L -> b
print(b)
print(class(a))
print(class(b))
cat("The Datatype of a is",class(a))
name <- "Abhilash"
class(name)

marks <- c(100,98,89)
print(marks)
print(marks[1])

num1 <-  5
num2 <-  7
num1 + num2
num1 - num2
num1 * num2
num1 / num2
num1 %% num2
num1 %/% num2

TRUE & TRUE
TRUE && TRUE
TRUE & FALSE
TRUE | FALSE
!TRUE

num = 0
if(num == 0){
  print("The Number is 0")
}else if (num %% 2 == 0) {
  print("EVEN NUMBER")
}else {
  print("ODD NUMBER")
}
