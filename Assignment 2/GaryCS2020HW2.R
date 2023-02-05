# Name: Derek Gary
# Course: CS2020-002
# Due: 02/20/23
# Homework Assignment 2

# a) load Auto.csv file into variable called Auto
#
Auto <- read.csv("Auto.csv")

# b) Finding Type and Class of Auto
#
print(typeof(Auto))
print(class(Auto))

# c) Get the Dimensions of Auto dataframe
#
print(dim(Auto))

# d) Remove all NA’s from Auto variable and redo step c
#
Auto <- na.omit(Auto)
print(dim(Auto))

# e) Report the names of all variables in Auto
#
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
# since we omitted NAs earlier.
#
Auto$horsepower[Auto$horsepower == "?"] <- NA
Auto$horsepower <- as.numeric(Auto$horsepower)
scatter_variables <- c("mpg", "displacement", "horsepower", "weight", "acceleration")
pairs(Auto[, scatter_variables])

# j) Report descriptive statistics for all fields in Auto
#
summary(Auto)