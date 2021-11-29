library(dplyr)
library(magrittr)
library(tidyverse)

library(mice)

require(plyr)
df2 <- read_csv("C:/Users/Srirama/Downloads/csv")

names(df2)

Missing_indices <- sapply(df2,function(x) sum(is.na(x)))
Missing_Summary <- data.frame(index = names(df2),Missing_Values=Missing_indices)
Missing_Summary[Missing_Summary$Missing_Values > 0,]

df2$Age[is.na(df2$Age)] <- mean(df2$Age,na.rm=TRUE)
df2$Avg_Life_Expec[is.na(df2$Avg_Life_Expec)] <- mean(df2$Avg_Life_Expec,na.rm=TRUE)
df2$Age_Adj_Death_Rate[is.na(df2$Age_Adj_Death_Rate)] <- mean(df2$Age_Adj_Death_Rate,na.rm=TRUE)


Mode <- function (x, na.rm) {
  xtab <- table(x)
  xmode <- names(which(xtab == max(xtab)))
  if (length(xmode) > 1) xmode <- ">1 mode"
  return(xmode)
}

df2$Embarked[is.na(df2$Embarked)] <- Mode(df2$Embarked,na.rm=TRUE)
df2$Cabin[is.na(df2$Cabin)] <- Mode(df2$Embarked,na.rm=TRUE)

Missing_indices <- sapply(df2,function(x) sum(is.na(x)))
Missing_Summary <- data.frame(index = names(df2),Missing_Values=Missing_indices)
Missing_Summary[Missing_Summary$Missing_Values > 0,]


 
library(ggplot2)
# line plot for life expectency
ggplot(data=df2, aes(x=PassengerId,y=Avg_Life_Expec, group=1)) +
  geom_line()



names(df2)
names(df2)[5] <- 'gender'
#bar plot for gender
ggplot(data = df2, aes(x = gender)) +
  geom_bar()

write.csv(df2,"./cleaned_dataset.csv", row.names = FALSE)
