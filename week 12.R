# Sub-divided bar plot / Matrix data creation
cust = matrix(nrow=4, ncol=3, data = c(2,20,30,26,53,40,42,15,25,30,75,100), byrow=T)

# Sub-divided bar plot with labels and colors
barplot(cust, names.arg=c("Shop 1", "Shop 2", "Shop 3"), xlab="Shops", ylab="Days", col=c("red", "green", "orange", "brown"))

# Pie diagram examples
gender = c(1,2,1,2,1,1,1,2,1,1)
pie(gender)
pie(table(gender))

direction = c(1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,1,1,3,3,1,2,1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,1,2,3,2,2,1,2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,2,3,1,2,3,3,3,2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,2,1,2,3,2,1,3,2,2,2,2,3,2,2)
pie(table(direction))
pie(table(direction), col=c("red", "green", "blue"), main="Directions of food delivery")

# Combining graphics
par(mfrow=c(1,2))
barplot(table(direction))
pie(table(direction))

par(mfrow=c(2,1))
barplot(table(direction))
pie(table(direction))

# Histogram examples
height = c(166,125,130,142,147,159,159,147,165,156,149,164,137,166,135,142,133,136,127,143,165,121,142,148,158,146,154,157,124,125,158,159,164,143,154,152,141,164,131,152,152,161,143,143,139,131,125,145,140,163)

hist(height)
hist(height, main="Heights of persons", col="green", xlab="Heights", ylab="Number of Persons")
hist(height, main="Heights of persons", col="red", xlab="Heights", ylab="Number of Persons", density=2)
hist(height, main="Heights of persons", col="red", xlab="Heights", ylab="Number of Persons", density=8)
hist(height, main="Heights of persons", col="red", xlab="Heights", ylab="Number of Persons", density=8, angle=100)

# Bivariate scatter plots
marks = c(337,316,327,340,374,330,352,353,370,380,384,398,413,428,430,438,439,479,460,450)
hours = c(23,25,26,27,30,26,29,32,33,34,35,38,39,42,43,44,45,46,44,41)

plot(hours, marks)
plot(hours, marks, "l")
plot(hours, marks, "b")
plot(hours, marks, "o")
plot(hours, marks, "h")
plot(hours, marks, "s")
plot(hours, marks, xlab="Number of weekly hours", ylab="Marks obtained", main="Marks obtained versus Number of hours per week")

# Matrix scatter plot
pairs(cbind(hours, marks))
pairs(cbind(hours, marks), labels=c("Study hours", "Marks obtained"), col="red")

# Scatter plots with smooth curve
scatter.smooth(hours, marks)
scatter.smooth(hours, marks, lpars = list(col = "red", lwd = 3, lty = 3))

# Three dimensional scatter plot
install.packages("scatterplot3d")
library(scatterplot3d)

height_3d = c(100, 125, 145, 160, 170)
weight_3d = c(30, 35, 50, 65, 70)
age_3d = c(10, 15, 20, 30, 35)

scatterplot3d(height_3d, weight_3d, age_3d)
scatterplot3d(height_3d, weight_3d, age_3d, angle=120)
scatterplot3d(height_3d, weight_3d, age_3d, color="red")

# Perspective plot examples
x = seq(-10, 10, length=30)
y = x
f_persp = function(x, y) { r = sqrt(x^2 + y^2); 10 * sin(r) / r }
z = outer(x, y, f_persp)
z[is.na(z)] = 1
op = par(bg = "white")

persp(x, y, z, theta=30, phi=30, expand=0.5, col="lightblue")
persp(x, y, z, theta=30, phi=30, expand=0.5, col="lightblue", ltheta=120, shade=0.75, ticktype="detailed", xlab="x", ylab="y", zlab="Sinc( r )")

# Programming Example 1
rm(list = ls())
x = c(10,20,30)
y = c(1,2,3)

example1 = function(x, y) {
  n = length(x)
  x1 = 0
  y1 = 0
  z1 = 0
  for (i in 1:n) {
    x1[i] = x[i]^2
    y1[i] = y[i]^2
    z1[i] = (x[i]/y[i])^2
  }
  sum_square_x = sum(x1)
  sum_square_y = sum(y1)
  sum_square_z = sum(z1)
  g = sum_square_x / sum_square_y
  h = sum_square_z
  cat("The value of g and h are", g, "and", h, "respectively", "\n")
}

# Example 1 Alternative approach
g = sum(x^2) / sum(y^2)
h = sum(x/y)^2

# Programming Example 2
rm(list = ls())
g_func = function(x, y) {
  (x + log(y)) / y
}

f_func = function(x, y) {
  (((g_func(x, y))^2) / (5 + (g_func(x, y))^3)) * (exp(g_func(x, y)))^(2/3)
}

# Programming Example 3
rm(list = ls())
f_ex3 = function(x) {
  if (x > 0) {
    exp((x + log(1 + x^3)) / x^2)
  } else if (x == 0) {
    10
  } else {
    (2 + x^3) / x
  }
}

h_ex3 = function() {
  x = seq(-1, 5, by = 0.2)
  y = 0
  for (i in 1:length(x)) {
    y[i] = f_ex3(x[i])
  }
  plot(x, y, type = "l")
}
```[cite: 1, 3, 6, 7, 8, 9, 10, 12, 13, 15, 18, 19, 22, 23, 24, 25, 34, 35, 37, 39, 40, 41, 42, 43, 44, 46, 49, 51, 53, 54, 56, 58, 59, 61, 62, 63, 73, 74, 75, 76, 81, 85, 86, 92, 93, 94, 95]