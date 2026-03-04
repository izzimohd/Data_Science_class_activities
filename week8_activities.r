install.packages("dplyr")
library(dplyr)
install.packages("readr")
library(readr)
student_data<- read.csv("C:/Users/User/Downloads/student_data.csv")
View(student_data)
Student_fail<- student_data %>% filter(final_exam_mark< 40)
View(Student_fail)
summary(student_data)
  student_id       
 Length:50         
 Class :character  
 Mode  :character  
                   
                   
                   
 student_name      
 Length:50         
 Class :character  
 Mode  :character  
                   
                   
                   
    gender         
 Length:50         
 Class :character  
 Mode  :character  
                   
                   
                   
 coursework_mark
 Min.   :34.00  
 1st Qu.:51.00  
 Median :62.00  
 Mean   :62.42  
 3rd Qu.:73.00  
 Max.   :97.00  
 final_exam_mark
 Min.   :34.00  
 1st Qu.:51.50  
 Median :56.50  
 Mean   :57.88  
 3rd Qu.:64.75  
 Max.   :84.00 
head(student_data)
  student_id     student_name gender coursework_mark
1       S001 Elizabeth Miller Female              40
2       S002   William Garcia   Male              59
3       S003    Sarah Johnson Female              79
4       S004    William Davis   Male              56
5       S005       John Smith   Male              74
6       S006  Sarah Rodriguez Female              41
  final_exam_mark
1              41
2              63
3              64
4              62
5              56
6              35
tail(student_data)
   student_id    student_name gender coursework_mark
45       S045     Susan Brown Female              77
46       S046      Mary Davis Female              70
47       S047 Linda Rodriguez Female              50
48       S048  Jessica Garcia Female              63
49       S049     Linda Davis Female              61
50       S050    Robert Brown   Male              73
   final_exam_mark
45              77
46              60
47              54
48              54
49              53
50              57

mydata<- student_data%>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
View(mydata)
mydata2 <- student_data[, c("student_id", "coursework_mark", "final_exam_mark")]
View(mydata2)
glimpse(mydata)
print(mydata)
student_id coursework_mark
1        S001              40
2        S002              59
3        S003              79
4        S004              56
5        S005              74
6        S006              41
7        S007              64
8        S008              73
9        S009              70
10       S010              67
11       S011              55
12       S012              52
13       S013              50
14       S014              67
15       S015              51
16       S016              58
17       S017              61
18       S018              93
19       S019              55
20       S020              69
21       S021              66
22       S022              51
23       S023              64
24       S024              87
25       S025              72
26       S026              66
27       S027              59
28       S028              34
29       S029              82
30       S030              43
31       S031              76
32       S032              94
33       S033              43
34       S034              76
35       S035              61
36       S036              41
37       S037              42
38       S038              41
39       S039              57
40       S040              43
41       S041              75
42       S042              97
43       S043              46
44       S044              77
45       S045              77
46       S046              70
47       S047              50
48       S048              63
49       S049              61
50       S050              73
   final_exam_mark
1               41
2               63
3               64
4               62
5               56
6               35
7               84
8               60
9               64
10              65
11              49
12              55
13              53
14              58
15              51
16              55
17              74
18              70
19              44
20              62
21              62
22              54
23              55
24              64
25              73
26              57
27              48
28              39
29              68
30              55
31              66
32              82
33              42
34              67
35              54
36              45
37              38
38              34
39              70
40              51
41              55
42              73
43              38
44              84
45              77
46              60
47              54
48              54
49              53
50              57

mydata <- student_data %>%
+     mutate(Total_Mark = coursework_mark + (final_exam_mark / 200 * 100))
 
View(mydata)
mydata <- cbind(student_data , Total_Mark = (student_data $coursework_mark + student_data$final_exam_mark/200*100))
View(mydata)
data("iris")
data <- iris
 
head(data)
  Sepal.Length Sepal.Width
1          5.1         3.5
2          4.9         3.0
3          4.7         3.2
4          4.6         3.1
5          5.0         3.6
6          5.4         3.9
  Petal.Length Petal.Width
1          1.4         0.2
2          1.4         0.2
3          1.3         0.2
4          1.5         0.2
5          1.4         0.2
6          1.7         0.4
  Species
1  setosa
2  setosa
3  setosa
4  setosa
5  setosa
6  setosa
> 
> tail(data)
    Sepal.Length Sepal.Width
145          6.7         3.3
146          6.7         3.0
147          6.3         2.5
148          6.5         3.0
149          6.2         3.4
150          5.9         3.0
    Petal.Length Petal.Width
145          5.7         2.5
146          5.2         2.3
147          5.0         1.9
148          5.2         2.0
149          5.4         2.3
150          5.1         1.8
      Species
145 virginica
146 virginica
147 virginica
148 virginica
149 virginica
150 virginica
> 
> str(data) 
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
 min(data$Sepal.Length)
[1] 4.3
> max(data$Sepal.Length)
[1] 7.9
> summary(data)
  Sepal.Length  
 Min.   :4.300  
 1st Qu.:5.100  
 Median :5.800  
 Mean   :5.843  
 3rd Qu.:6.400  
 Max.   :7.900  
  Sepal.Width   
 Min.   :2.000  
 1st Qu.:2.800  
 Median :3.000  
 Mean   :3.057  
 3rd Qu.:3.300  
 Max.   :4.400  
  Petal.Length  
 Min.   :1.000  
 1st Qu.:1.600  
 Median :4.350  
 Mean   :3.758  
 3rd Qu.:5.100  
 Max.   :6.900  
  Petal.Width   
 Min.   :0.100  
 1st Qu.:0.300  
 Median :1.300  
 Mean   :1.199  
 3rd Qu.:1.800  
 Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  

A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
 
quantile(A)
   0%   25%   50%   75%  100% 
160.4 163.9 170.2 181.5 188.9 
 
sort(A)
[1] 160.4 163.7 163.9 166.4
[5] 170.2 175.8 181.5 181.5
[9] 188.9
 
quantile(A,0.25)
  25% 
163.9 
 
quantile(A,0.75)
  75% 
181.5 
 
IQR(A)
[1] 17.6
> nrow(data)
[1] 150

dfplayers<-read.csv("C:/Users/User/Downloads/players.csv")
 
 median_age <- median(dfplayers$Age, na.rm =TRUE)
 
dfplayers$Age[dfplayers$Age<18 | 
+                   
+ dfplayers$Age>38]<-median_age
 
View(dfplayers)
data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")
summary(dfplayers)
 Player_Name       
 Length:15         
 Class :character  
 Mode  :character  
                   
                   
                   
      Age      
 Min.   :23.0  
 1st Qu.:26.5  
 Median :29.0  
 Mean   :27.8  
 3rd Qu.:29.5  
 Max.   :30.0  
     Club          
 Length:15         
 Class :character  
 Mode  :character  
                   
                   
                   
   Height_cm    
 Min.   :155.0  
 1st Qu.:157.5  
 Median :179.0  
 Mean   :173.1  
 3rd Qu.:183.5  
 Max.   :192.0  
   Weight_lbs   
 Min.   :148.0  
 1st Qu.:157.5  
 Median :174.0  
 Mean   :201.7  
 3rd Qu.:182.0  
 Max.   :500.0  
     Foot          
 Length:15         
 Class :character  
 Mode  :character  
                   
                   
                   
    Joined         
 Length:15         
 Class :character  
 Mode  :character

first_q<-quantile(data,0.25) 
 
 third_q<-quantile(data,0.75) 
 
iqr<-IQR(data)
>print(first_q)
25% 
 26 
print(third_q)
  75% 
31.75 
> print(iqr)
[1] 5.75


le<-first_q - 1.5 * iqr
ue<-third_q + 1.5 * iqr 
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new
 [1] 30 24 26 28 29 28 27 26
 [9] 32 34 31 29 28 24 25 30
[17] 34 35 27 30 34
 data_new <- data
avg <- round(mean(data_new)) 
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new
 [1] 30 24 26 28 29 28 27 26
 [9] 32 34 29 29 29 31 29 28
[17] 24 25 30 34 35 27 30 34
[25] 29 29
> data_new <- data
> data_new[data_new<le] <- le
> data_new[data_new>ue] <- ue
> data_new
 [1] 30.000 24.000 26.000
 [4] 28.000 29.000 28.000
 [7] 27.000 26.000 32.000
[10] 34.000 17.375 17.375
[13] 17.375 31.000 29.000
[16] 28.000 24.000 25.000
[19] 30.000 34.000 35.000
[22] 27.000 30.000 34.000
[25] 40.375 40.375
boxplot(data_new, main = "Boxplot")
