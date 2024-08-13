x <- c(2.1, 4.2, 3.3, 5.4)

x[c(3,1)].  #does not have to go in order of elements

x[order(x)]
x[c(1,1)]
x[c(2.1, 2.9)] #truncates value, returns the second value because rounds to lower whole num

x[-1] #returns the last 3 elements
x[-c(3,1)] #gets rid of the third and first, returns the second and the fourth
#x[c(-1, 2)] CANNOT mix negative and positives
x[c(TRUE, TRUE, FALSE, FALSE)] #returns first and second but not third and fourth
x[x > 3] #returns the values that are greater than or equal to 3

x[c(TRUE, FALSE)]
x[c(TRUE, TRUE, NA, FALSE)] #replaces third value with NA
x[] # returns back original vector
x[0] # numeric 0 is returned

x <- 1:5
x
x[c(1,2)] <- 2:3
x[-1] <- 4:1
x
x[c(TRUE, FALSE, NA)] <- 1
x
df <- data.frame(a = c(1, 10, NA))
df$a[df$a < 5 ] <- 0
df

mtcars
mtcars[mtcars$gear == 5, ]
mtcars[mtcars$gear == 5 & mtcars$cyl == 4, ]

subset(mtcars, gear == 5 & cyl == 4)
library(tidyverse)
ggplot(subset(mtcars, gear == 5 & cyl == 4), aes(x = mpg,
                                                 y = disp)) +
  geom_point()

df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3]) #df 1,2,3  3,2,1  abc
df
df$z <- NULL #gets rid of row
df

df[c("x", "y")]
setdiff(names(df), "") #only want to get rid of one column
names(df)
