
rm(list=ls())

item1<- c('1001','Electronics','700')
item2<- c('1002','Desktop Supplies','300')
item3<- c('1003','Office Supplies','350')
item4<- c('1004','USB','400')
item5<- c('1005','CD Drive','800')

# Add rows
itemList = list(item1,item2,item3,item4,item5)
#Set Column Names
columns<-c('itemCode','itemCategory','itemPrice')
#Create Empty Dataframe
itemData = data.frame(matrix(nrow = 0, ncol = length(columns))) 
# assign column names
colnames(itemData) = columns
View(itemData)
#Append Rows to Dataframe
for(item in itemList){
  itemData[nrow(itemData)+1,]<-item
}
View(itemData)
#Create Required subsets
sub_itemData_gt350<-subset(itemData, itemData$itemPrice >= 350) 
View(sub_itemData_gt350)

sub_itemData_supplies<-subset(itemData, (itemData$itemCategory=='Office Supplies') |(itemData$itemCategory=='Desktop Supplies')) 
View(sub_itemData_supplies)

#Create Seond Dataframe
itemDetailsColumn<-c('itemCode','ItemQtyonHand','ItemReorderLvl')
itemDetails = data.frame(matrix(nrow = 0, ncol = length(itemDetailsColumn))) 
colnames(itemDetails) = itemDetailsColumn
View(itemDetails)
itemDetails1<- c('1001','15','2')
itemDetails2<- c('1002','10','2')
itemDetails3<- c('1003','20','4')
itemDetails4<- c('1004','12','5')
itemDetails5<- c('1005','5','1')
itemDetailsList = list(itemDetails1,itemDetails2,itemDetails3,itemDetails4,itemDetails5)

for(itemDetail in itemDetailsList){
  itemDetails[nrow(itemDetails)+1,]<-itemDetail
}

View(itemDetails)

#Performing an Inner Join merge
merged <- merge(itemData, itemDetails, by = "itemCode")
merged

#Example for Joins
df1 <- data.frame(Id = c(333, 444, 555, 777, 999),
                  Product = c("laptop", "printer", "tablet", "desk", "chair"))

df2 <- data.frame(Id = c(333, 444, 666, 777, 888),
                  Price = c(1200, 150, 300, 450, 200))

inner_merged <- merge(df1, df2, by = "Id")
print(inner_merged)

left_merged <- merge(df1, df2, by = "Id", all.x = TRUE)
print(left_merged)


right_merged <- merge(df1, df2, by = "Id", all.y = TRUE)
print(right_merged)

outer_merged <- merge(df1, df2, by = "Id", all = TRUE)
print(outer_merged)
