add2 <- function(x, y)  {
        x + y
}
add2(3, 5)

above10 <- function(x)  {
      use <- x > 10
      x[use]  #returns the subset that is bigger than 10
}

x <- 1:17
x
above10(x)

above <- function(x, n)  {
  use <- x > n
  x[use]  #returns the subset that is bigger than 10
}

above(x, 7)

above_10n <- function(x, n = 10)  {
  use <- x > n
  x[use]  #returns the subset that is bigger than 10
}
      
above_10n(x)

columnmean <- function(y, removeNA = TRUE) {   #y is a matrix, will calculate the mean of each column
        nc <- ncol(y) #how many columns
        means <- numeric(nc)  #initialize a vector that will store the means for each vector, the length of the vector has to equal the number of columns
        for(i in 1:nc)  { #for loop, an integer vector that starts at 1 and ends at the number of columns
                means[i] <- mean(y[, i], na.rm = removeNA)  #for each i going to get assigned to means vector
        }
        means     #return the vector means
}

columnmean(airquality)
columnmean(airquality, FALSE)

#save the file

