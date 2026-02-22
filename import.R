#Import csv into R
getwd()
data_cv <- read.csv("C:/Users/ACER/Desktop/my_covid(in).csv")
print(head(data_cv,5))
summary(data_cv)

#Export data
newdf<- data_cv[-seq(10, 13), ]
View(newdf)
write.csv(newdf, "C:/Users/ACER/Desktop/my_covid(in).csv")

#CHange NA into 0
a <- c
a <- c(1:5, rep(NA,3),6:10)
sum(a)
b<-a[!is.na(a)]
a
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a


#Clean NA data
library(readr)
df<- read.csv("C:/Users/ACER/Desktop/NAexample(in).csv")
View(df)
df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
View(df)

#Check for NA all table
is.na(df)

#Check for Na in col
is.na(df["VarA"])

#Clean Data
library(readr)
df_raw <- read.csv("C:/Users/ACER/Desktop/file1.csv")
df_cleaned <- df_raw
df_logrm <- data.frame(TagsValue=character(), Definition=character(), Value=character())
rows_to_remove <- c()

for (i in 1:nrow(df_raw))
{
  if (df_raw[i, 2] == "Bad value" && df_raw[i, 3] == "Garbage")
  {
    rows_to_remove <- c(rows_to_remove, i)
    # Log the removed bad values
    df_logrm <- rbind(df_logrm, c(df_raw[i, 1], df_raw[i, 2],df_raw[i, 3]))
    # Save the index for the rows to be removed
  }
}
df_cleaned <- df_cleaned[-rows_to_remove, ]
View(df_cleaned)
View (df_logrm)

#Convert Data
data(iris)
head(iris)

#check its type
class(iris$Species)


#View values of catagories/level
levels(iris$Species)

#Convert Categorical to numeric
iris$Species_numeric <- as.numeric(iris$Species)
head(iris)
