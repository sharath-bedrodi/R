# Simple Linear Regression

#setwd('C:/Users/Praahas/Projects/VTU-RProgramming/dataset')
setwd('SPECIFY PATHNAME HERE')
# Importing the dataset
dataset = read.csv('Salary_Data.csv')
View (dataset)
# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

View(test_set)
# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)
regressor
?lm()
# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Training set)') +
  xlab('Years of experience') +
  ylab('Salary')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary),
             colour = 'red') +
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Salary vs Experience (Validation set)') +
  xlab('Years of experience') +
  ylab('Salary')

#Correaltion between predicted and actual values
#to show the accuracy of the model. 
#More linear implies more accurate
ggplot() +
  geom_point(aes(x = test_set$Salary, y = y_pred),
             colour = 'red') +
  ggtitle('Correlation between Actual Points and Predicted Points') +
  xlab('Actual Value') +
  ylab('Predicted Value')

errorVec<-test_set$Salary - y_pred
