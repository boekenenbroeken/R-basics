install.packages('dplyr', dependencies = TRUE)
install.packages('ggplot2', dependencies = TRUE)

library(dplyr)
library(ggplot2)

5+10-7

8*10/3

pi

sqrt(11)

2^3

x <- 2
x

X <- 3
X 

v1 <- TRUE
class(v1)

v1 <- -100
class(v1)

v1 <- 3L
class (v1)

v1 <- 3+2i
class(v1)

v1 <- "Boston"
class(v1)

numeric_vector <- c(10, 15, 63)

boolean_vector <- c(TRUE, TRUE, FALSE)

char_vector <- c("One", "Two", "Three")

z <- c(10, 9, 8)
k <- c(7, 6, 5)

z+k
z-k
2*z
sqrt(k)
sum(k)
length(z)
n <- c(z, k)

s <- 1:25
s
s[5]
s[5:10]
s[c(3, 2, 11)]
s[-c(1, 3)]
s[s > 3]
s[s > 7 & s<20]
s[s > 7 | s<20]

o <- c(20, 12, 3, NA)
sum(o)
sum(o, na.rm = TRUE)

mat <- matrix(data = c(10, 11, 12), ncol = 3)
mat

b <- list(user_name="Rachel", 3, foo=c(4, 20, 34))
print(b)
b[[2]]
b[[1]]
b$user_name

month <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")
class(month)

mons <- factor(mons, levels=c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"), ordered=TRUE)
class(mons)
mons[1]
mons[2]
mons[1] < mons[2]

cause <- c('pilot error', 'mechanical', 'weather', 'sabotage', 'other')
amount <- c(640, 195, 63, 95, 111)
plane_crash <- data.frame(cause, amount)
plane_crash

head(airquality)
ncol(airquality)
nrow(airquality)
colnames(airquality)
airquality2 <- airquality[airquality$Month == 5, ]
head(airquality2)

airquality$Temp[airquality$Month == 5]