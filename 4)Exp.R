#develop a program to find the factorial of given number using recursive function calls
rm(list=ls())
nfact<-function(n){  
  if(n==1){    
    # cat("Called nfact(1)\n")    
    return(1)  
  }else{    
    # cat("called nfact(",n,")\n",sep="")                                                                   	 
    return(n*nfact(n-1))  
  }
}
x=nfact(5)
print(paste("factorial of a number is",x))