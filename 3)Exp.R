rm(list=ls())
A <- matrix(1:9, nrow=3, ncol=3,byrow=TRUE)#Create Matrix A
print(A)
B <- matrix(2:10, nrow=3, ncol=3,byrow=TRUE)#Create Matrix B
print(B)
AT<-t(A)#Transpose of Matrix using t()
print(AT)
mat_sum<-A+B#Add Matrix
cat("sum of two matrices are\n")
print(mat_sum)
mat_dif<-A-B #get difference of Matrix A and B
cat("diffrence of two matrices are\n")
print(mat_dif)
mat_dif1<-B-A

mat_prod<-A*B#Vector Multiplication
mat_prod1<-A%*%B#Matrix Multiplication
cat("production of two matrices are\n")
print(mat_prod1)