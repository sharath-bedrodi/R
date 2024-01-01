rm(list=ls())
#library(moments)
library(e1071)
library(ggplot2)
mtcars
#Read description about the dataset
?mtcars
carData <- mtcars
#TOtal NUmber of Observations
# Use dim() to find the dimension of the data set
number.of.observations<-dim(carData)[1]
number.of.variables<-dim(carData)[2]

car.with.largest.hp<-row.names(subset(carData, carData$hp==max(carData$hp)))
car.with.largest.hp                                      

car.with.least.hp<-row.names(subset(carData, carData$hp==min(carData$hp)))
car.with.least.hp 

hist(carData$mpg,col="green", border="black",prob = TRUE)
lines(density(carData$mpg),col = "chocolate3")
skewness(carData$mpg,type=2)
kurtosis(carData$mpg,type=2)

hist(carData$disp,col="green",border="black",prob = TRUE)
lines(density(carData$disp),col = "chocolate3")
skewness(carData$disp,type=2)
kurtosis(carData$disp,type=2)

hist(carData$hp,col="green",border="black", prob = TRUE)
lines(density(carData$hp),col = "chocolate3")
skewness(carData$hp,type=2)
kurtosis(carData$hp,type=2)

hist(carData$drat,col="green",border="black",prob = TRUE)
lines(density(carData$drat),col = "chocolate3")
skewness(carData$drat,type=2)
kurtosis(carData$drat,type=2)

hist(carData$wt,col="green",border="black",prob = TRUE)
lines(density(carData$wt),col = "chocolate3")
skewness(carData$wt,type=2)
kurtosis(carData$wt,type=2)

hist(carData$qsec,col="green",border="black",prob = TRUE)
lines(density(carData$qsec),col = "chocolate3")
skewness(carData$qsec,type=2)
kurtosis(carData$qsec,type=2)

#https://www.freecodecamp.org/news/skewness-and-kurtosis-in-statistics-explained/
#https://community.gooddata.com/metrics-and-maql-kb-articles-43/normality-testing-skewness-and-kurtosis-241
#In statistics, skewness is a measure of the asymmetry of the probability distribution of a random variable about its mean. In other words, skewness tells you the amount and direction of skew (departure from horizontal symmetry). The skewness value can be positive or negative, or even undefined. If skewness is 0, the data are perfectly symmetrical, although it is quite unlikely for real-world data. As a general rule of thumb:
#If skewness is less than -1 or greater than 1, the distribution is highly skewed.
#If skewness is between -1 and -0.5 or between 0.5 and 1, the distribution is moderately skewed.
##If skewness is between -0.5 and 0.5, the distribution is approximately symmetric.

#Kurtosis tells you the height and sharpness of the central peak, relative to that of a standard bell curve.
#kurtosis is 3 for a normal distribution

carData.4cyl.hp<-subset(carData,carData$cyl==4)["hp"]
carData.8cyl.hp<-subset(carData,carData$cyl==8)["hp"]
diff.gross.hp<-round(mean(carData.8cyl.hp[,1])-mean(carData.4cyl.hp[,1]))                                       
print(diff.gross.hp)
diff.sd<-round(sd(carData.8cyl.hp[,1])-sd(carData.4cyl.hp[,1])) 
print(diff.sd)

print(cor(carData$mpg, carData$cyl, method = 'pearson'))
print(cor(carData$mpg, carData$disp, method = 'pearson')) 
print(cor(carData$mpg, carData$hp, method = 'pearson'))
print(cor(carData$mpg, carData$drat, method = 'pearson'))
print(cor(carData$mpg, carData$wt, method = 'pearson'))
print(cor(carData$mpg, carData$qsec, method = 'pearson'))

print(cor(carData$cyl, carData$disp, method = 'pearson')) 
print(cor(carData$cyl, carData$hp, method = 'pearson'))
print(cor(carData$cyl, carData$drat, method = 'pearson'))
print(cor(carData$cyl, carData$wt, method = 'pearson'))
print(cor(carData$cyl, carData$qsec, method = 'pearson'))

print(cor(carData$disp, carData$hp, method = 'pearson'))
print(cor(carData$disp, carData$drat, method = 'pearson'))
print(cor(carData$disp, carData$wt, method = 'pearson'))
print(cor(carData$disp, carData$qsec, method = 'pearson'))

print(cor(carData$hp, carData$drat, method = 'pearson'))
print(cor(carData$hp, carData$wt, method = 'pearson'))
print(cor(carData$hp, carData$qsec, method = 'pearson'))

print(cor(carData$drat, carData$wt, method = 'pearson'))
print(cor(carData$drat, carData$qsec, method = 'pearson'))

print(cor(carData$wt, carData$qsec, method = 'pearson'))

#Interpretation of Pearson Correlation Coefficient 
#The value of the correlation coefficient (r) lies between -1 to +1. When the value of –
#r=0; there is no relation between the variable.
#r=+1; perfectly positively correlated.
#r=-1; perfectly negatively correlated.
#r= 0 to 0.30; negligible correlation.
#r=0.30 to 0.50; moderate correlation.
#r=0.50 to 1 highly correlated.

cor(carData)

cor_df <- round(cor(carData), 2)

#melt the data frame
melted_cormat <- melt(cor_df)

#create correlation heatmap
ggplot(data = melted_cormat, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() +
  geom_text(aes(Var2, Var1, label = value), size = 5) +
  scale_fill_gradient2(low = "blue", high = "red",
                       limit = c(-1,1), name="Correlation") +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        panel.background = element_blank())

