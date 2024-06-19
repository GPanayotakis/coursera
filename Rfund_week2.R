setwd("/Users/gabri/OneDrive/Desktop/coursera/coursera")
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

for (i in seq_along(a)) {
      print(a[i])
}
