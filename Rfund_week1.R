myfunction <- function() {
    x <- rnorm(100) 
    mean(x)
    }
second <- function(x) {
  x + rnorm(length(x))
}


y <- c(1.7, "a")

y <- c(TRUE, 2)

x <- list(1, "a", TRUE, 1 + 4i)

#matricies

m <- matrix (nrow = 2, ncol = 3)

n <- matrix(1:6, nrow = 2, ncol = 3)

o <- 1:10

dim(o) <- c(2, 5)

p <- 1:3
q <- 10:12
cbind(x, y)
rbind(x, y)


#dataframe example
#dataframes are used to store tabular data

r <- data.frame(foo = 1:4, bar = c(T, T, F, F))
#foo is variable 1, first column
#bar is variable 2, second column

#adding name to a matrix
s <- matrix(1:4, nrow = 2, ncol = 2)
#dimnames is how you assign names to a matrix
#assign dimnames a list where the first vector is row names (a and b) and the second vector is column names
dimnames(s) <- list(c("a", "b"), c("c", "d"))

#read data files with read.table and return a dataframe - default separator is a space
#read data files with read.csv and return a dataframe - default separator is a comma (specifies header = true)
s

#dput, dget
t <- data.frame(a = 1, b = "a")
dput(t)
dput(t, file = "t.R")
new.t <- dget("t.R")
new.t
#dump
u <- "foo"
v <- data.frame(a = 1, b = "a")
#pass the character vectors to dump and the file to store the objects in
dump(c("u", "v"), file = "data.R")
#can remove but they will still be in the file
rm(u, v)
source("data.R")
u
v

#subsetting
w <- c("a", "b", "c", "c", "d", "a")
#subset using a numeric index
w[1]
w[2]
w[1:4]
#logical index
#all the elements greater than the letter a
w[w > "a"]
#logical vector (T/F) that tells me which elements of the vector w are greater than the letter a
x <- w >"a"
x
#subset w with the x vector to get all the elements greater than "a"
w[x]

#subsetting lists
z <- list(foo = 1:4, bar = 0.6)
#single bracket always returns element with the same class as the original
#a list
z[1]
#double bracket gives the sequence
#a sequence
z[[1]]
#dollar sign gives the element associated with the name bar
z$bar
#double bracket operator and pass it as a string
z[["bar"]]
#single bracket with the name gives a list with the element bar in it (single bracket will return a list if subsetting a list)
#using the name means you don't have to remember where in the list it is

#single bracket to extract multiple elements
a <- list(boo = 1:4, far = 0.9, baz = "hello")
a[c(1, 3)]
#double bracket to index a list where the index itself is computed
