#Simple linear regression
#1
#data of height
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
#data of weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
# Apply the lm() function
relation <- lm(y~x)
print(relation)
Call:
lm(formula = y ~ x)
Coefficients:
(Intercept)            x  
   -38.4551       0.6746  
#2
#Find weight of a person with height 170
X_test <- data.frame(x = 170)
result <- predict(relation,X_test)
print(round(result, digit=2))
    1 
76.23 
# Find weight of a person with height 189
X_test2 <- data.frame(x = 189)
result <- predict(relation,X_test2)
print(round(result, digit=2))
    1 
89.05

#3PLot the chart
plot(x, y,
+      col = "blue",
+      main = "Height & Weight Regression",
+      pch = 16,
+      xlab = "Height in cm",
+      ylab = "Weight in Kg")
 
abline(relation)

#4 Training & Testing
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152,
+        131)
#data of weight
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
#Creating data frame
data1= data.frame(x,y)
#splitting data into training and testing
data1_train<-data1[1:7,]
data1_test<-data1[8:10,]
# Apply the lm() function
relation <- lm(y~x, data1_train)
print(relation)

Call:
lm(formula = y ~ x, data = data1_train)

Coefficients:
(Intercept)            x  
   -35.1160       0.6564  
#Make prediction
x_text <- data.frame(x= data1_test$x)
result <- predict(relation,x_text)
print(result)
       1        2        3 
71.88066 64.66003 50.87518

#Mean Absolute Percentage Error(MAPE)
mape <- mean(abs((data1_test$y -result)/data1_test$y)*100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")
[1] "The error - MAPE is:  3.48 %"
#Performance measurement [Option 2] 
#Create a data frame to combine the actuals and predicted values] 
actuals_preds <- data.frame(cbind(actuals=data1_test$y,predicteds=result))
mape <- mean(abs(actuals_preds$actuals - actuals_preds$predicteds )/actuals_preds$actuals)*100
paste("The error - MAPE is: ", round(mape,digit=2),"%")
[1] "The error - MAPE is:  3.48 %"
#5
#Hapiness_income
df<-read.csv("C:/Users/User/Downloads/income_happiness.csv")

#Split data into training (80%) and testing (20%) sets
#Randomly select row indices for training
train_indices <- sample(1:nrow(df), size = 0.8 * nrow(df))
train_data <- df[train_indices, ]
test_data <- df[-train_indices, ]
# Apply the lm() function
relation <- lm(happiness~income, data=train_data)
print(relation)

Call:
lm(formula = happiness ~ income, data = train_data)

Coefficients:
(Intercept)       income  
  5.2735227    0.0002606  
# Prediction
a <- data.frame(x=test_data$income)
colnames(a) <- "income"
result <- predict(relation,a)

# Plot
plot(test_data$income, test_data$happiness,
     col = "red",
     pch = 16,
     xlab = "income",
     ylab = "happiness")

# Add regression line
abline(lm(happiness ~ income, data = train_data))

#5 Class Activity
# Create dataset
# data of experience
experience <- c(1,2,3,4,5,6,7,8,9,10)

# data of monthly salary
salary <- c(2500,2700,3000,3400,3900,4400,5000,5600,6200,6900)

# Apply the lm() function
relation <- lm(salary ~ experience)

print(relation)
Call:
lm(formula = salary ~ experience)

Coefficients:
(Intercept)   experience  
     1613.3        499.4  
plot(experience, salary,
     col = "blue",
     main = "Experience vs Salary Regression",
     pch = 16,
     xlab = "Years of Experience",
     ylab = "Monthly Salary (RM)")

abline(relation)
# Creating data frame
data1 <- data.frame(experience, salary)

# splitting data
data1_train <- data1[1:7,]
data1_test <- data1[8:10,]

# Apply the lm() function
relation <- lm(salary ~ experience, data1_train)

print(relation)
Call:
lm(formula = salary ~ experience, data = data1_train)

Coefficients:
(Intercept)   experience  
     1871.4        421.4 
x_test <- data.frame(experience = data1_test$experience)

result <- predict(relation, x_test)

print(result)
       1        2        3 
5242.857 5664.286 6085.714
