#Multiple Linear Regression
#built in data
data(mtcars)
head(mtcars)
                   mpg cyl
Mazda RX4         21.0   6
Mazda RX4 Wag     21.0   6
Datsun 710        22.8   4
Hornet 4 Drive    21.4   6
Hornet Sportabout 18.7   8
Valiant           18.1   6
                  disp  hp
Mazda RX4          160 110
Mazda RX4 Wag      160 110
Datsun 710         108  93
Hornet 4 Drive     258 110
Hornet Sportabout  360 175
Valiant            225 105
                  drat    wt
Mazda RX4         3.90 2.620
Mazda RX4 Wag     3.90 2.875
Datsun 710        3.85 2.320
Hornet 4 Drive    3.08 3.215
Hornet Sportabout 3.15 3.440
Valiant           2.76 3.460
                   qsec vs am
Mazda RX4         16.46  0  1
Mazda RX4 Wag     17.02  0  1
Datsun 710        18.61  1  1
Hornet 4 Drive    19.44  1  0
Hornet Sportabout 17.02  0  0
Valiant           20.22  1  0
                  gear carb
Mazda RX4            4    4
Mazda RX4 Wag        4    4
Datsun 710           4    1
Hornet 4 Drive       3    1
Hornet Sportabout    3    2
Valiant              3    1
str(mtcars)
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
#model the MLR
model <- lm(mpg ~ hp + wt + cyl, data = mtcars)
#invesitigate the properties of the model
summary(model)

Call:
lm(formula = mpg ~ hp + wt + cyl, data = mtcars)

Residuals:
    Min      1Q  Median 
-3.9290 -1.5598 -0.5311 
     3Q     Max 
 1.1850  5.8986 

Coefficients:
            Estimate
(Intercept) 38.75179
hp          -0.01804
wt          -3.16697
cyl         -0.94162
            Std. Error
(Intercept)    1.78686
hp             0.01188
wt             0.74058
cyl            0.55092
            t value Pr(>|t|)
(Intercept)  21.687  < 2e-16
hp           -1.519 0.140015
wt           -4.276 0.000199
cyl          -1.709 0.098480
               
(Intercept) ***
hp             
wt          ***
cyl         .  
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01
  ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.512 on 28 degrees of freedom
Multiple R-squared:  0.8431,	Adjusted R-squared:  0.8263 
F-statistic: 50.17 on 3 and 28 DF,  p-value: 2.184e-11

> summary(model)

Call:
lm(formula = mpg ~ hp + wt + cyl, data = mtcars)

Residuals:
    Min      1Q  Median 
-3.9290 -1.5598 -0.5311 
     3Q     Max 
 1.1850  5.8986 

Coefficients:
            Estimate
(Intercept) 38.75179
hp          -0.01804
wt          -3.16697
cyl         -0.94162
            Std. Error
(Intercept)    1.78686
hp             0.01188
wt             0.74058
cyl            0.55092
            t value Pr(>|t|)
(Intercept)  21.687  < 2e-16
hp           -1.519 0.140015
wt           -4.276 0.000199
cyl          -1.709 0.098480
               
(Intercept) ***
hp             
wt          ***
cyl         .  
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01
  ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 2.512 on 28 degrees of freedom
Multiple R-squared:  0.8431,	Adjusted R-squared:  0.8263 
F-statistic: 50.17 on 3 and 28 DF,  p-value: 2.184e-11

data(mtcars)

# split data into train and test sets
data.train <- mtcars[1:22, ]
data.test  <- mtcars[23:32, ]
#modelling
relation <-lm(mpg ~ hp +wt+cyl, data = data.train)
summary(relation)
# Prediction
a <- data.frame(hp = data.test$hp, wt = data.test$wt, cyl = data.test$cyl)
result <- predict(relation, a)
print(round(result, digits = 2))
    1     2     3     4     5 
17.63 14.51 15.89 27.87 26.75 
    6     7     8     9    10 
28.21 16.15 21.16 13.53 24.46 

mape <- mean(abs((data.test$mpg - result)/ data.test$mpg )*100)
paste("The error - MAPE is: ", round(mape,digit=2),"%")
[1] "The error - MAPE is:  8.82 %"
#Class Activity
# 1. Load and clean the built-in data
data(airquality)
# Remove rows with NA values since they will break the model and predictions
clean_data <- na.omit(airquality) 

# Check the structure to verify
str(clean_data)

# 2. Split data into train (70%) and test (30%) sets
# Calculate the row index for the 70% mark
split_index <- floor(0.70 * nrow(clean_data))

data.train <- clean_data[1:split_index, ]
data.test  <- clean_data[(split_index + 1):nrow(clean_data), ]

# 3. Modelling
relation <- lm(Ozone ~ Solar.R + Wind + Temp, data = data.train)

# Investigate the properties of the model
summary(relation)

# 4. Prediction
a <- data.frame(Solar.R = data.test$Solar.R, Wind = data.test$Wind, Temp = data.test$Temp)
result <- predict(relation, a)

# Print the predicted values
print(round(result, digits = 2))

# 5. Evaluate the Error
mape <- mean(abs((data.test$Ozone - result) / data.test$Ozone) * 100)
paste("The error - MAPE is: ", round(mape, digits=2), "%")
