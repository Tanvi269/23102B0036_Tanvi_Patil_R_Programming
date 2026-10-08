# ============================================================
# FRS WEEK 12 - LECTURE 50
# SUBDIVIDED BAR PLOTS AND PIE DIAGRAM
# ============================================================


# ------------------------------------------------------------
# 1. SUBDIVIDED / COMPONENT BAR DIAGRAM
# ------------------------------------------------------------

cust = matrix(
  nrow = 4,
  ncol = 3,
  data = c(
    2,20,30,
    26,53,40,
    42,15,25,
    30,75,100
  ),
  byrow = TRUE
)

cust

# Basic bar plot
barplot(cust)


# Bar plot with labels and colours
barplot(
  cust,
  names.arg = c("Shop 1", "Shop 2", "Shop 3"),
  xlab = "Shops",
  ylab = "Days",
  col = c("red", "green", "orange", "brown")
)


# ------------------------------------------------------------
# 2. PIE DIAGRAM
# ------------------------------------------------------------

# 1 = Male
# 2 = Female

gender = c(1,2,1,2,1,1,1,2,1,1)

gender

# Pie chart
pie(gender)

# Pie chart using frequency table
pie(table(gender))


# ------------------------------------------------------------
# 3. PIZZA HOME DELIVERY EXAMPLE
# ------------------------------------------------------------

# 1 = East
# 2 = West
# 3 = Central

direction = c(
  1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,1,1,3,3,1,2,
  1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,1,2,3,2,2,1,
  2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,2,3,1,2,3,3,3,
  2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,2,1,2,3,2,1,3,
  2,2,2,2,3,2,2
)

# Basic pie chart
pie(table(direction))


# Pie chart with colours and title
pie(
  table(direction),
  col = c("red", "green", "blue"),
  main = "Directions of food delivery"
)


# ------------------------------------------------------------
# 4. COMBINING GRAPHICS
# ------------------------------------------------------------

# 1 row, 2 columns
par(mfrow = c(1,2))

barplot(table(direction))

pie(table(direction))


# 2 rows, 1 column
par(mfrow = c(2,1))

barplot(table(direction))

pie(table(direction))


# Reset plotting area
par(mfrow = c(1,1))

# ============================================================
# FRS WEEK 12 - LECTURE 51
# HISTOGRAM
# ============================================================


# ------------------------------------------------------------
# 1. HEIGHT DATA
# ------------------------------------------------------------

height = c(
  166,125,130,142,147,159,159,147,
  165,156,149,164,137,166,135,142,
  133,136,127,143,165,121,142,148,
  158,146,154,157,124,125,158,159,
  164,143,154,152,141,164,131,152,
  152,161,143,143,139,131,125,145,
  140,163
)

height


# ------------------------------------------------------------
# 2. BASIC HISTOGRAM
# ------------------------------------------------------------

hist(height)


# ------------------------------------------------------------
# 3. HISTOGRAM - RELATIVE FREQUENCY
# ------------------------------------------------------------

hist(height, freq = FALSE)


# ------------------------------------------------------------
# 4. HISTOGRAM WITH TITLE AND LABELS
# ------------------------------------------------------------

hist(
  height,
  main = "Heights of persons",
  col = "green",
  xlab = "Heights",
  ylab = "Number of Persons"
)


# ------------------------------------------------------------
# 5. HISTOGRAM WITH DENSITY
# ------------------------------------------------------------

hist(
  height,
  main = "Heights of persons",
  col = "red",
  xlab = "Heights",
  ylab = "Number of Persons",
  density = 2
)


# ------------------------------------------------------------
# 6. INCREASE DENSITY
# ------------------------------------------------------------

hist(
  height,
  main = "Heights of persons",
  col = "red",
  xlab = "Heights",
  ylab = "Number of Persons",
  density = 8
)


# ------------------------------------------------------------
# 7. DENSITY + ANGLE
# ------------------------------------------------------------

hist(
  height,
  main = "Heights of persons",
  col = "red",
  xlab = "Heights",
  ylab = "Number of Persons",
  density = 8,
  angle = 100
)

# ============================================================
# FRS WEEK 12 - LECTURE 52
# BIVARIATE SCATTER PLOTS
# ============================================================


# ------------------------------------------------------------
# 1. MARKS DATA
# ------------------------------------------------------------

marks = c(
  337,316,327,340,374,330,352,353,370,380,
  384,398,413,428,430,438,439,479,460,450
)

hours = c(
  23,25,26,27,30,26,29,32,33,34,
  35,38,39,42,43,44,45,46,44,41
)


marks
hours


# ------------------------------------------------------------
# 2. BASIC SCATTER PLOT
# ------------------------------------------------------------

plot(hours, marks)


# ------------------------------------------------------------
# 3. LINE PLOT
# ------------------------------------------------------------

plot(hours, marks, "l")


# ------------------------------------------------------------
# 4. BOTH POINTS AND LINES
# ------------------------------------------------------------

plot(hours, marks, "b")


# ------------------------------------------------------------
# 5. OVERPLOTTED POINTS AND LINES
# ------------------------------------------------------------

plot(hours, marks, "o")


# ------------------------------------------------------------
# 6. HISTOGRAM-LIKE VERTICAL LINES
# ------------------------------------------------------------

plot(hours, marks, "h")


# ------------------------------------------------------------
# 7. STAIR-STEP PLOT
# ------------------------------------------------------------

plot(hours, marks, "s")


# ------------------------------------------------------------
# 8. SCATTER PLOT WITH LABELS
# ------------------------------------------------------------

plot(
  hours,
  marks,
  xlab = "Number of weekly hours",
  ylab = "Marks obtained",
  main = "Marks obtained versus Number of hours per week"
)

# ============================================================
# MATRIX SCATTER PLOT
# ============================================================


# Basic matrix scatter plot
pairs(cbind(hours, marks))


# Matrix scatter plot with labels and colour
pairs(
  cbind(hours, marks),
  labels = c("Study hours", "Marks obtained"),
  col = "red"
)

# ============================================================
# SCATTER PLOT WITH SMOOTH CURVE
# ============================================================


# Basic scatter plot with smooth curve
scatter.smooth(hours, marks)


# Smooth curve with additional options
scatter.smooth(
  hours,
  marks,
  lpars = list(
    col = "red",
    lwd = 3,
    lty = 3
  )
)

# ============================================================
# THREE DIMENSIONAL SCATTER PLOT
# ============================================================


# Install package if required
install.packages("scatterplot3d")

# Load package
library(scatterplot3d)


# ------------------------------------------------------------
# DATA
# ------------------------------------------------------------

height3d = c(100,125,145,160,170)

weight3d = c(30,35,50,65,70)

age3d = c(10,15,20,30,35)


# ------------------------------------------------------------
# BASIC 3D SCATTER PLOT
# ------------------------------------------------------------

scatterplot3d(
  height3d,
  weight3d,
  age3d
)


# ------------------------------------------------------------
# CHANGE DIRECTION
# ------------------------------------------------------------

scatterplot3d(
  height3d,
  weight3d,
  age3d,
  angle = 120
)


# ------------------------------------------------------------
# CHANGE COLOUR
# ------------------------------------------------------------

scatterplot3d(
  height3d,
  weight3d,
  age3d,
  color = "red"
)

# ============================================================
# PERSPECTIVE PLOT
# ============================================================


# Generate x values
x = seq(-10, 10, length = 30)

# y = x
y = x


# Define function
f = function(x,y)
{
  r = sqrt(x^2 + y^2)
  10 * sin(r) / r
}


# Generate z values
z = outer(x, y, f)


# Replace NA values
z[is.na(z)] = 1


# Set background
op = par(bg = "white")


# ------------------------------------------------------------
# BASIC PERSPECTIVE PLOT
# ------------------------------------------------------------

persp(
  x,
  y,
  z,
  theta = 30,
  phi = 30,
  expand = 0.5,
  col = "lightblue"
)


# ------------------------------------------------------------
# DETAILED PERSPECTIVE PLOT
# ------------------------------------------------------------

persp(
  x,
  y,
  z,
  theta = 30,
  phi = 30,
  expand = 0.5,
  col = "lightblue",
  ltheta = 120,
  shade = 0.75,
  ticktype = "detailed",
  xlab = "X",
  ylab = "Y",
  zlab = "Sinc( r )"
)


# Restore plotting parameters
par(op)

# ============================================================
# FRS WEEK 12 - LECTURE 53
# EXAMPLE 1
# ============================================================


# Remove all data
rm(list = ls())


# Define input data vectors
x = c(10,20,30)

y = c(1,2,3)


# ------------------------------------------------------------
# START OF FUNCTION
# ------------------------------------------------------------

example1 = function(x,y)
{
  
  # Computation of number of observations
  n = length(x)
  
  
  # Initialize values
  x1 = 0
  y1 = 0
  z1 = 0
  
  
  # Start of loop
  for(i in 1:n)
  {
    
    # Store squared values
    x1[i] = x[i]^2
    
    y1[i] = y[i]^2
    
    z1[i] = (x[i]/y[i])^2
  }
  
  
  # Obtain sum of squared quantities
  sum_square_x = sum(x1)
  
  sum_square_y = sum(y1)
  
  sum_square_z = sum(z1)
  
  
  # Computation of g and h
  g = sum_square_x / sum_square_y
  
  h = sum_square_z
  
  
  # Format output
  cat(
    "The value of g and h are",
    g,
    "and",
    h,
    "respectively",
    "\n"
  )
}


# ------------------------------------------------------------
# TEST EXAMPLE 1
# ------------------------------------------------------------

x = c(10,20,30)

y = c(1,2,3)

example1(x,y)


# Another example
x = c(67,87,26,85,6,45)

y = c(54,64,22,94,20,88)

example1(x,y)

# ============================================================
# EXAMPLE 1 - ALTERNATIVE APPROACH
# ============================================================


example1_alternative = function(x,y)
{
  
  g = sum(x^2) / sum(y^2)
  
  h = sum((x/y)^2)
  
  cat(
    "The value of g and h are",
    g,
    "and",
    h,
    "respectively",
    "\n"
  )
}


# Test
x = c(10,20,30)

y = c(1,2,3)

example1_alternative(x,y)

# ============================================================
# EXAMPLE 2
# ============================================================


# Remove all data
rm(list = ls())


# Define g(x,y)

g = function(x,y)
{
  (x + log(y)) / y
}


# Define f(x,y)

f = function(x,y)
{
  (
    (g(x,y)^2) /
      (5 + g(x,y)^3)
  ) *
    (exp(g(x,y)))^(2/3)
}


# ------------------------------------------------------------
# TEST EXAMPLE 2
# ------------------------------------------------------------

x = 10

y = 20

f(x,y)


# Second set of values

x = 1896

y = 23454

f(x,y)

# ============================================================
# EXAMPLE 3
# PIECEWISE FUNCTION
# ============================================================


# Remove all data
rm(list = ls())


# ------------------------------------------------------------
# DEFINE FUNCTION f(x)
# ------------------------------------------------------------

f = function(x)
{
  
  if(x > 0)
  {
    exp(
      (x + log(1 + x^3)) / x^2
    )
  }
  
  else if(x == 0)
  {
    10
  }
  
  else
  {
    (2 + x^3) / x
  }
}


# ------------------------------------------------------------
# DEFINE FUNCTION h()
# ------------------------------------------------------------

h = function()
{
  
  # Generate x values
  x = seq(-1,5,by=0.2)
  
  
  # Initialize y
  y = 0
  
  
  # Generate f(x) values
  for(i in 1:length(x))
  {
    y[i] = f(x[i])
  }
  
  
  # Plot y = f(x)
  plot(
    x,
    y,
    type = "l"
  )
}


# ------------------------------------------------------------
# TEST VALUES
# ------------------------------------------------------------

f(123)

f(-123)

f(0)

f(8)

f(-4)

f(0)


# ------------------------------------------------------------
# PLOT THE FUNCTION
# ------------------------------------------------------------

h()

