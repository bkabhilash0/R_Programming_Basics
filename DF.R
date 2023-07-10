students <- data.frame(
  stu_id = c("S01","S02","S03","S04","S05"),
  name = c("Abhilash","Ajay","Akshaya","Aleena","Amal"),
  age = c(22,22,23,22,21),
  dob = as.Date(c("2001-05-27","2001-08-10","2000-02-10","2001-08-10","2002-01-10")),
  stringsAsFactors = FALSE
)

students
summary(students)
str(students)

data.frame(students$name,students$dob)

students[1:2,]
students[,1:2]

# Add a column
students$stream <- c("Physics","BCA","Maths","Statistics","Maths")
students
students$dob[1]

floor((Sys.Date() - students$dob[1])/366)

students[students$age > 22]
subset(students,(age > 21) & (stream == "Physics"))

students

x <- "2022-12-15"
tmp <- rbind(students,c("S06","Anitha",22,x,"Maths"))
str(tmp)

tmp$dob[1]


id <- c(1:7)
weight <- c(20,27,24,22,23,25,28)
gender <- c("male","female","female","male","male","female","male")
smoking <- c("no","yes","no","yes","yes","no","yes")
tumour <- c("small","large","medium","large","medium","large","small")

myData <- data.frame(id,weight,gender,smoking,tumour)
myData

r <- list(8,26,"male","yes","small")
myData <- rbind(myData,r)
myData

c <- c("ker","guj","Punjab","TN","Assam",'Karnataka',"Delhi","Pune")
myData <- cbind(myData,c)
myData

myData1 <- data.frame(myData$id,myData$smoking)
myData1

myData[c(-1),]

myData[,-1]

names(myData)

head(myData,3)
edit(myData)

myData2 <- data.frame(id=c(2:8),bp=c("low","high","norm","low","high","low","high"),bmi=c("low","high","norm","low","high","norm","low"))
myData2

myData
merge(myData,myData2,by="id")
myData[order(weight),]
t(myData)
myData
split(myData,smoking)
is.factor(myData$gender)
myData$gender <- factor(myData$gender)
summary(myData)
levels(myData$gender)

levels(myData$gender) <- c(levels(myData$gender),"TG")
myData$gender[7] <- "TG"
myData
g_factors <- gl(3,5,labels = c("MCA","BCA","BTech"))
g_factors

tmp <- readline("Enter:")

print(getwd())

myFile <- read.csv("./data1.csv")
myFile
summary(myFile)

nrow(myFile)
ncol(myFile)

max(myFile$salary)

subset(myFile,salary == max(myFile$salary))
subset(myFile,dept=='IT  ')
myFile$dept
