#create and view DF
names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
View(df)

#call row 1 and col 3
df[1,3]

#Call row 1-2 and col 1-3
df[1:2,1:3]

#Call Col Height
df['height']

#Call Col Gender in df
df["gender"]

#Call Col Gender in vector
df$gender

#Call Row 1 and Col 2
df[1:2]

#Call Row 1 and Col 2 in col
df[c(1,2)]

#Find name "mike
df[df$names == "Mike",]

#Find name Fufu
df[df$names == "Fufu",]

#Create new df
newdf= rbind(df,data.frame(names = "Suuria",gender = "Female", height = 156, weight = 56, age = 23 ))
print("After Added rows:\n")
print(newdf)

#Create new df and merge
gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")
df1 = data.frame(names,gender,height,weight,age)

states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")
df2 = data.frame(names, states)

dfMerge= merge(df1, df2, by = "names", all= TRUE)

#to remove row
newDf2 = newDf[-2]

#view dfs
View(df1)
View(df2)
View(dfMerge)

#remove row in df
newDf2 = newDf[-2]
View(newDf2)

#new df and change content
newDf3 = newDf
newDf3[1,"age"] <- 30
newDf3[4, "height"] <- 152
View(newDf3)

#New Df and remove col 4
newDf4 = newDf[,-4]
newDf4[,-4]
