rm(list=ls())

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
months<-c("January","February","March","April","May","June","July","August","September","October","November","December")

#Profit for each month.
profit <- revenue - expenses
profit


#Profit after tax for each month 
tax<-round(profit*0.3)
tax

profit.after.tax<-(profit-tax)
profit.after.tax

#Profit margin for each month 
profit.margin<-round(profit.after.tax/revenue,2)*100
profit.margin

#Good Months 
mean_pat<- mean(profit.after.tax)
mean_pat

good.months<-profit.after.tax>mean_pat
good.months

#Bad Months 
bad.months<-!good.months
bad.months

#The best month 
best.month<-profit.after.tax == max(profit.after.tax)
best.month

#The worst month 
worst.month<-profit.after.tax == min(profit.after.tax)
worst.month

#Result Presentation according to requirement
revenue.1000<-round(revenue/1000,0)
revenue.1000

expenses.1000<-round(expenses/1000,0)
expenses.1000

profit.1000<-round(profit/1000,0)
profit.1000

profit.after.tax.1000<-round(profit.after.tax/1000,0)
profit.after.tax.1000


financials <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
) 

colnames(financials) <- months
View(financials)
write.csv(financials, file= "Financial Statement.csv", append=FALSE,  row.names=TRUE, col.names=TRUE)
getwd()
