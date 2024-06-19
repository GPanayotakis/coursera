setwd("/Users/gabri/OneDrive/Desktop/coursera/coursera")
rm(list=ls())
#control structures
#used to write a r program or fcn

#control structures: if
#allows the program to test logical conditions and allow the program to do something depending on if the condition is T/F

#example
#if(<condition>) {
## do something
#} else {               #else part is optional
## do something else
#}

#more than one condition to check:
#if(<condition>) {
## do something
#} else {               #else part is optional
## do something different
#} else {
## do something different
#}
x <- 1
if(x > 3) {
  y <- 10 ## do something
} else {               #else part is optional
  y <- 0  ## do something else
}


y <- if (x>3) {   #entire construct is abt assigning a value to y
  10
} else {
  0
}

#without the else clause

if(<condition1>) {
  
}

if(<condition2>) {
  
}

#for loop
#loop index covers a series of integers
#loop index is called i

a <- c("a", "b", "c", "d")

for(i in 1:4) {
  print(a[i])   #print out the ith element of a
}

for (i in seq_along(a)) {   #makes an integer sequence the length of the vector, generate the seq based on the length of the variable x
  print(a[i])
}

for (letter in x) {   #letter is the index variable, which will be taking values from itself. index variable doesn't have to be an integer, can take elements from any arbitrary vector
  print(letter)
}

#nested for loop
b <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(b))) {
  for(j in seq_len(ncol(b)))  {
  }
}
i
j
b
?seq_len
?nrow
nrow(b)
ncol(b)

c <- matrix(12:24, 2, 12)
c
nrow(c)
ncol(c)

for(i in seq_len(nrow(c))) {
  for(j in seq_len(ncol(c)))  {
  }
}
i
j

#while loops, can run infinitely by accident
count <- 0

while(count<10) {
  print(count)
  count <- count + 1
}

#test more than one condition
d <- 5

while (d >= 3 && d <= 10) {   #conditions are evaluated left to right
  print(d)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1) { ## random walk
    d <- d + 1
  } else  {
    d <- d - 1
  }
}

#repeat
#initiates an infinite loop
#dangerous bc hard to predict how long the loop will run
#better off using a for loop with a hard limit

#next
#used to skip an interation
for(i in 1:100) {
  if(i <= 20) {
    ## skip the first 20 iterations
    next
  }
  ## do something more
}
#return signals a fcn that should exit and return a given value

#functions should be written in a text file

#formal arguments of a fcn are what's included
#arguments that aren't named will be passed to whatever's unnamed and leftover
args(lm)
#specifications are given to the first argument that hasn't already been matched
#just specifying one is easier to call out by name
#best to call out arguments by name
#arguments can be partially matched

#defining a function
f <- function(a, b = 1, c = 2, d = NULL) {
  #specify any default values and the null value (nothing there)
}

#lazy evaluation = arguments of a fcn evaluated as they're needed

f <- function (a, b) {
  a^2
}
f(2)  #b isn't defined so no problem

f <- function(a, b) {
  print(a)
  print(b)
}
f(45) #executes until part that causes error

#... is used to extend another function when you don't want to type it out
#used when unclear the number of arguments to be passed
args(paste)
args(cat)
#arguments after ... must be named explicitly, cannot be partially matched
args(paste)
paste("a", "b", sep = ":")
paste("a", "b", se = ":")

#scoping rules
search()  #going to look for the right function
#order of packages matter, looks in order
#library function puts the package in the second position after the global environment
#function has two kinds of variables: function arguments, other variables or symbols
#lexical scoping
#everything in R is pairs of symbols and values
#every environment has a parent environment
#each package has a namespace and an environment

#free variable - looks in the environment in which the fcn was defined
#then looks in parent environment, go down the search list, then top level environment (package)

#you can have functions inside other functions

make.power <- function(n) {   #n is defined here  #pow is defined here
  pow <- function(x)  {
    x^n   #n is a free variable bc not defined in the pow fcn
  }
  pow   #return value
}

cube <- make.power(3)
cube(3)

#look at the environment in which a fcn is defined
ls(environment(cube))
get("n", environment(cube))

#dynamic vs lexical scoping (i do not understand this at all)
#r uses lexical scoping
#all objects must be stored in memory
#functions must carry a pointer to its environment
#when you define a fcn inside another fcn, there must be a pointer to the defining env so r can remember the values for the free parameters
#objective functions can store data, parameters, etc so you don't have to specify them every time

#dates
#yyyy-mm-dd format
#date class
x <- Sys.time()
x
p <- as.POSIXlt(x)
p
names(unclass(p))
p$sec

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)
