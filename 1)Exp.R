# Clears the Environment
rm(list = ls())

# Assigning a Double
var1 <- 123
print(typeof(var1))

# Assigning an Integer
var2 <- 123L
print(typeof(var2))

# Assigning Character
var3 <- "apple"
print(typeof(var3))

# Assigning Logical
var3 <- TRUE
var4 <- FALSE
var5 <- T
var6 <- F
print(typeof(var3))
print(typeof(var4))
print(typeof(var5))
print(typeof(var6))

# Assigning Complex Data
var7 <- 2 + 3i
print(typeof(var7))

# Arithmetic Operations - Inspect the Variables in the workspace
a <- 1
b <- 3
c <- 1
sum <- a + b
print(paste("sum of 2 numbers=",sum))

# View(sum)  # Commented out as View() is not necessary here

diff <- b - a
print(paste("difference between 2 numbers=",diff))

e <- a^b
print(paste("exponent of 2 numbers=",e))

m <- b*a
print(paste("multiplication of 2 numbers=",m))

d <- a/b
print(paste("division of 2 numbers=",d))

intdiv<-a%/%b 
print(paste("integer division of 2 numbers=",intdiv))

mod<-a%%b
print(paste("modulus of 2 numbers=",mod))

x1 <- 2L
x2 <- 2.5
x <- x1 + x2  # x will have 4.5 as a result

# Logical Operations
x <- TRUE
y <- FALSE

# AND
result_and <- x & y
cat("AND:", result_and, "\n")

# OR
result_or <- x | y
cat("OR:", result_or, "\n")

# NOT
result_not <- !x
cat("NOT:", result_not, "\n")

# Exponential function
exp(2)

# Vectors
v1 <- c(1, 2, 3)
v1
1:5

# Arithmetic Operation on Vectors
vec1 <- 1:5
vec2 <- 6:10
sum_vec <- vec1 + vec2
dif_vec <- vec2 - vec1
prod_vec <- vec1 * vec2  # element by element multiplication

# Algebraic operations on vectors act element-wise
x <- c(1, 2, 3)
y <- c(4, 5, 6)
x * y  # [1] 4 10 18
x + y  # [1] 5 7 9
y^x    # [1] 4 25 216

# Recycling of values
c(1, 2, 3, 4) + c(1, 2)      # [1] 2 4 4 6
(1:10)^c(1, 2)               # [1] 1 4 3 16 5 36 7 64 9 100
2 + c(1, 2, 3)                # [1] 3 4 5
2 * c(1, 2, 3)                # [1] 2 4 6
(1:10)^2                     # [1] 1 4 9 16 25 36 49 64 81 100

# Logical operations on vectors
v <- c(3, 1, TRUE, 2 + 3i)
t <- c(0, 1, FALSE, 2 + 3i)
print(v & t)  # [1] TRUE TRUE FALSE TRUE


# Example: Find all integers between 1 & 20 that are divisible by 4.
x <- 1:20
y <- x[x %% 4 == 0]  # [1] 4 8 12 16 20
print(y)

# Using concatenate c function to create vectors
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9, 10)
d <- a + b
print(d)

# Create a matrix by binding vectors as rows using rbind()
a <- c(1, 2, 3, 4, 5)
b <- c(6, 7, 8, 9, 10)
rb <- rbind(a, b)
print(rb)

# Create a matrix by binding vectors as columns using cbind()
cb <- cbind(a, b)
print(cb)

# Accessing Vector elements
a[1]
a[1:3]

# Creating Matrices & accessing Values
A <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
B <- matrix(2:7, nrow = 2, ncol = 3, byrow = TRUE)
print(A)
A[1, 3] <- 0  # Changes the 1st row 3rd column value to 0
A[, 2:3]      # References all the rows and columns from 2 to 3

# Creating an Array out of a vector or matrix
arr_a <- as.array(A)
print(A)
print(arr_a)
typeof(arr_a)

# Creating a list from a vector
d <- c(1, 2, "Apple", 5, 6)
list_d <- as.list(d)
print(list_d)

# Accessing elements in array and list
arr_a[1]
arr_a[1:3]

list_d[[1]]
list_d[[3]]
