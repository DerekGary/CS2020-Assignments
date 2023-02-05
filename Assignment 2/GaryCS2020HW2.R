# Name: Derek Gary
# Course: CS2020-002
# Due: 02/20/23
# Homework Assignment 2

# a) load Auto.csv file into variable called Auto
#
Auto <- read.csv("Auto.csv")

# b) Finding Type and Class of Auto
#
#Output:
#[1] "list"
#[1] "data.frame"

print(typeof(Auto))
print(class(Auto))

# c) Get the Dimensions of Auto dataframe
#
#Output: 
#[1] 397   9
print(dim(Auto))

# d) Remove all NA’s from Auto variable and redo step c
#
#Output:
#[1] 397   9
Auto <- na.omit(Auto)
print(dim(Auto))

# e) Report the names of all variables in Auto
#
#Output:
#[1] "mpg"          "cylinders"    "displacement" "horsepower"   "weight"       "acceleration" "year"         "origin"       "name" 
print(names(Auto))

# f) Direct field access and then plot cylinder by mpg
#
attach(Auto)
plot(mpg, cylinders)
detach(Auto)

# g) Conversion to factor and then plotted using green coloring and custom
# labeling
#
Auto$cylinders <- as.factor(Auto$cylinders)
plot(Auto$cylinders, Auto$mpg, col = "green", ylab = "CYLINDERS", xlab = "MPG")

attach(Auto)

# h) Histogram of MPG data in green coloring and a break of 10
#
hist(mpg, col="green", breaks=10)
detach(Auto)

# i) Noticed how horsepower wasn't represented as numerical and contained '?'
# instead of 'NA', so converted '?' values found in Auto$horsepower into 'NA'
# and then converted these values to numerical.
# Only then was I able to complete the pairs operation on this data.
# I don't know if this was the right sets of operations to perform
# since we omitted NAs earlier. However, checks for 
#
Auto$horsepower[Auto$horsepower == "?"] <- NA
Auto$horsepower <- as.numeric(Auto$horsepower)
scatter_variables <- c("mpg", "displacement", "horsepower", "weight", "acceleration")
pairs(Auto[, scatter_variables])

# j) Report descriptive statistics for all fields in Auto
#
summary(Auto)
# Output:
#      mpg        cylinders  displacement     horsepower        weight      acceleration        year           origin          name          
#Min.   : 9.00   3:  4     Min.   : 68.0   Min.   : 46.0   Min.   :1613   Min.   : 8.00   Min.   :70.00   Min.   :1.000   Length:397        
#1st Qu.:17.50   4:203     1st Qu.:104.0   1st Qu.: 75.0   1st Qu.:2223   1st Qu.:13.80   1st Qu.:73.00   1st Qu.:1.000   Class :character  
#Median :23.00   5:  3     Median :146.0   Median : 93.5   Median :2800   Median :15.50   Median :76.00   Median :1.000   Mode  :character  
#Mean   :23.52   6: 84     Mean   :193.5   Mean   :104.5   Mean   :2970   Mean   :15.56   Mean   :75.99   Mean   :1.574                     
#3rd Qu.:29.00   8:103     3rd Qu.:262.0   3rd Qu.:126.0   3rd Qu.:3609   3rd Qu.:17.10   3rd Qu.:79.00   3rd Qu.:2.000                     
#Max.   :46.60             Max.   :455.0   Max.   :230.0   Max.   :5140   Max.   :24.80   Max.   :82.00   Max.   :3.000                     
#NA's   :5                                                                       