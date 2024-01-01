
#setwd('C:/Users/Praahas/Projects/R-Lab/dataset')
setwd("D:\Sharath(AIML)\R\input.csv")
# Importing the dataset
dataset = read.csv('input.csv')
View (dataset)
typeof(dataset)
dataset
nrow(dataset)
ncol(dataset)
max_salary = max(dataset$salary) 
max_salary

max_salaries <- subset(dataset, dataset$salary == max(dataset$salary)) 
max_salaries

IT_Dept<-subset(dataset, dataset$department == 'IT') 
IT_Dept

salary_gt_value<-subset(dataset, dataset$salary > 20000)
salary_gt_value
write.csv(salary_gt_value,"output.csv", row.names = FALSE) 

dataset[nrow(dataset)+1,]<-list(nrow(dataset)+1,'2023001','XYZ','5000','01-01-2023','IT')
View (dataset)
