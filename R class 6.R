X <- 30L
if(is.integer(x)){
  print("x is an integer")
}
x <- 5
if(x>0){
  print("positive number")
}
x <- -5
if(x>0){
  print("non-negative")
}else{
  print("nagative number")
}
x <- -10
if (x<0){
  print("nagative number")
}else if("positive number")
else  
print ("ten")  
print(seq(32,42,56) ,mean(30,80) ,sum(1:5:8:12))
new.function <- function(a){
for(i in 1:a){
  b<-i^2
  print(b)
}
} 
new.function()
new.function <- function(){
  for(i in 1:10)
    
    
file.info("C:\\Users\\Srirama\\Downloads\\emp.mhealth\\csv")$size
library(dplyr)
library(magrittr)
df <- read.csv ("C:/Users/Srirama/Downloads/emp.mhealth.csv")
str(df)
  names(df)
  df <- df%>% rename(employees = How.many.employees.does.your.company.or.organization.have.)
  colnames(df)[2]
  typeof(df$employees)
  unique(df$gender)
  df <- df%>% rename(gender=What.is.your.gerder)
  colnames(df)[57]
  unique(df$gender)
  df$gender <- gsub("(?i)F|(?i)Female", "1", df$gender)
  df$gender <- gsub("(?i)m|(?i)male", "0", df$gender)
  unique(df$gender)
  str(df)
  print(df)
  df1 <- df
  df1["df = ="]<-NA
  df1
  df1[is.na(df1)]=2
  str(df1)
  print(df1)
  write.csv(df1,"C:/Users/Srirama/Downloads/emp.mhealth.csv",row.names=FALSE)
  is.na(df1)
}
