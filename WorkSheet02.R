#Print numbers form 1 to 10
1:10
seq(1, 10, 1) #seq(startPoint, endPoint, increment)

#extract element from seq
a <- seq(1, 10, 2)
a
a[3]

#Get random sample(Population and sample sizes are same here)
sample(1 : 10)

#Population(1-10 numbers) sample size = 5, withoust replacement
sample(1:10, size = 5, replace = FALSE)

sample(1:3, size = 5, replace = TRUE)

#sample using vector
sample(c(2, 3, 5, 1, 7), size = 3, replace = FALSE)

#sampling setting probability weight
sample(1:3,size = 2, replace = TRUE, prob = c(1,2,3))
sample(1:3,size = 2, replace = TRUE, prob = c(0.7, 0.2, 0.1))

#Control Statements#

#(1)If Else
x <- 1:10
y <- sample(x, size = 1)

if(y <= 5) {
  print("Y is smaller than 5")
} else {
  print("Y is greater than 5")
}

#(2)Nested if condition
x <- -5:10
y <- sample(x, size = 1)
if(y < 0) {
  print("Negative")
} else if(y == 0){
  print("Zero")
} else {
  print("Postive")
}

#(3) for Loop
for(i in 1 : 100) {
  print(i)
}

students <- c("Amal", "Kamal", "Nimal")
for(var in students) {
  print(var)
}

for(i in 1:3) {
  print(students[i])
}

#(4) While Loop
j <- 1
while(j <= 10) {
  print(j)
  j = j + 1
}
