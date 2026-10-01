# ============================================================
# FOUNDATIONS OF R SOFTWARE
# Combined Code from the PDF
# Lectures 43, 46, 47, 48 and 49
# ============================================================


# ============================================================
# PART 1: DATA FRAMES
# ============================================================

# Load MASS package
library(MASS)

# Display painters data frame
painters


# Summary of categorical variable
summary(painters$School)


# ------------------------------------------------------------
# Attaching a Data Frame
# ------------------------------------------------------------

attach(painters)

# Summary of School
summary(School)

# Summary of Composition
summary(Composition)

# Detach data frame
detach(painters)

# After detach(), variables must be accessed using painters$
# summary(School)   # This will give an error


# ------------------------------------------------------------
# Subsets of a Data Frame
# ------------------------------------------------------------

# Select painters belonging to School F
subset(painters, School == "F")


# Equivalent method using indexing
painters[painters[["School"]] == "F", ]


# Select painters with Composition <= 6
subset(painters, Composition <= 6)


# Select School F and remove Colour and School columns
subset(
  painters,
  School == "F",
  select = c(-3, -5)
)


# ------------------------------------------------------------
# Split Data Frame
# ------------------------------------------------------------

# Split painters according to School
splitted <- split(painters, painters$School)

# Display the split data
splitted

# Check whether splitted$A is a data frame
is.data.frame(splitted$A)


# ============================================================
# PART 2: IMPORTING AND READING EXCEL DATA
# ============================================================

# Set working directory
setwd("C:/RCourse/")


# Install readxl package if required
# install.packages("readxl")

# Load readxl package
library(readxl)


# ------------------------------------------------------------
# Reading Excel Files
# ------------------------------------------------------------

# Read first sheet
read_excel("datafile.xlsx")

# Read XLS file
read_excel("datafile.xls")


# Specify sheet by position
read_excel("datasets.xlsx", sheet = 1)

# Specify sheet by name
read_excel("datasets.xlsx", sheet = "sheet_name")


# ------------------------------------------------------------
# Excel Example
# ------------------------------------------------------------

# Read first sheet
dataspexcel <- read_excel(
  "spexcel.xlsx",
  sheet = 1
)

# Display data
dataspexcel


# Extract variables
dataspexcel$`Variable 1`
dataspexcel$`Variable 2`

# Calculate mean
mean(dataspexcel$`Variable 1`)


# ------------------------------------------------------------
# Reading Second Excel Sheet
# ------------------------------------------------------------

dataspexcel2 <- read_excel(
  "spexcel.xlsx",
  sheet = 2
)

# Display second sheet
dataspexcel2

# Extract variables
dataspexcel2$`Variable 4`
dataspexcel2$`Variable 5`
dataspexcel2$`Variable 6`

# Calculate mean
mean(dataspexcel2$`Variable 6`)


# ------------------------------------------------------------
# Limit Number of Rows
# ------------------------------------------------------------

read_excel(
  "spexcel.xlsx",
  n_max = 3
)

dataspexcel4 <- read_excel(
  "spexcel.xlsx",
  n_max = 3
)

dataspexcel4


# ------------------------------------------------------------
# Read Excel Range
# ------------------------------------------------------------

# A1 notation
read_excel(
  "spexcel.xlsx",
  range = "C1:E7"
)

# R1C1 notation
read_excel(
  "spexcel.xlsx",
  range = "R1C2:R2C5"
)


# ============================================================
# PART 3: READING OTHER DATA FILES
# ============================================================

# ------------------------------------------------------------
# SPSS Data File
# ------------------------------------------------------------

# Install package if required
# install.packages("foreign")

library(foreign)

data <- read.spss("datafile.sav")


# ------------------------------------------------------------
# HTML Data File
# ------------------------------------------------------------

# Install package if required
# install.packages("XML")

library(XML)

data <- readHTMLTable("filename")


# ------------------------------------------------------------
# Other file formats using foreign package
# ------------------------------------------------------------

# Octave / MATLAB
read.octave("<Path to file>")

# SYSTAT
read.systat("<Path to file>")

# SAS XPORT
read.xport("<Path to file>")

# Stata
read.dta("<Path to file>")


# ============================================================
# PART 4: SAVING AND WRITING DATA FILES
# ============================================================

# ------------------------------------------------------------
# write()
# ------------------------------------------------------------

# Create vector from 1 to 100
x <- c(1:100)

# Display vector
x

# Write vector to a file
write(
  x,
  file = "shalabh"
)


# General syntax
write(
  x,
  file = "data",
  ncolumns = 1,
  append = FALSE,
  sep = " "
)


# ============================================================
# PART 5: WRITING CSV FILES
# ============================================================

# Basic write.csv()
write.csv(
  x,
  file = "",
  append = FALSE
)


# General form
write.csv(
  x,
  file = "",
  append = FALSE,
  quote = TRUE,
  sep = " ",
  eol = "\n",
  na = "NA",
  dec = ".",
  row.names = TRUE,
  col.names = TRUE,
  qmethod = c("escape", "double"),
  fileEncoding = ""
)


# Example: Save object x as CSV
write.csv(
  x,
  file = "output.csv"
)


# ============================================================
# PART 6: WRITING TABLE/DATA FRAME FILES
# ============================================================

# Basic write.table()
write.table(
  x,
  file = "",
  append = FALSE
)


# General form
write.table(
  x,
  file = "",
  append = FALSE,
  quote = TRUE,
  sep = " ",
  eol = "\n",
  na = "NA",
  dec = ".",
  row.names = TRUE,
  col.names = TRUE,
  qmethod = c("escape", "double"),
  fileEncoding = ""
)


# ============================================================
# PART 7: ABSOLUTE AND RELATIVE FREQUENCIES
# ============================================================

# Create gender data
gender <- c(
  1, 2, 1, 2, 1,
  1, 1, 2, 1, 1
)

# Display gender
gender


# Absolute frequencies
table(gender)


# Relative frequencies
table(gender) / length(gender)


# ============================================================
# PART 8: PIZZA HOME DELIVERY EXAMPLE
# ============================================================

# Direction:
# 1 = East
# 2 = West
# 3 = Central

direction <- c(
  1,1,2,1,2,3,2,2,3,3,3,1,2,3,2,2,3,1,1,3,3,1,2,
  1,3,3,3,2,2,2,2,1,2,2,1,1,1,3,2,2,1,2,3,2,2,1,
  2,3,3,2,1,2,2,3,1,1,2,1,2,3,2,3,2,2,3,1,2,3,3,3,
  2,1,1,1,2,1,1,2,1,2,3,3,1,2,3,3,2,1,2,3,2,1,3,
  2,2,2,2,3,2,2
)

# Absolute frequencies
table(direction)

# Relative frequencies
table(direction) / length(direction)


# ============================================================
# PART 9: QUANTILES / PARTITION VALUES
# ============================================================

# Marks of 15 students
marks <- c(
  68, 82, 63, 86, 34,
  96, 41, 89, 29, 51,
  75, 77, 56, 59, 42
)

# Default quantiles
quantile(marks)


# Explicitly specify probabilities
quantile(
  marks,
  probs = c(0, 0.25, 0.5, 0.75, 1)
)


# Define custom probabilities
quantile(
  marks,
  probs = c(0, 0.20, 0.4, 0.6, 0.8, 1)
)


# ============================================================
# PART 10: SCATTER PLOT
# ============================================================

# Height of 50 persons in centimeters
height <- c(
  166,125,130,142,147,159,159,147,
  165,156,149,164,137,166,135,142,
  133,136,127,143,165,121,142,148,
  158,146,154,157,124,125,158,159,
  164,143,154,152,141,164,131,152,
  152,161,143,143,139,131,125,145,
  140,163
)

# Basic scatter plot
plot(height)


# Scatter plot with red points
plot(
  height,
  col = "red"
)


# ============================================================
# PART 11: BAR PLOTS
# ============================================================

# Gender data
gender <- c(
  1, 2, 1, 2, 1,
  1, 1, 2, 1, 1
)


# Basic bar plot
barplot(gender)


# Absolute frequency bar plot
barplot(
  table(gender)
)


# Relative frequency bar plot
barplot(
  table(gender) / length(gender)
)


# ============================================================
# PART 12: BAR PLOT USING DIRECTION DATA
# ============================================================

# Basic bar plot
barplot(direction)


# Absolute frequency bar plot
barplot(
  table(direction)
)


# Relative frequency bar plot
barplot(
  table(direction) / length(direction)
)


# ============================================================
# PART 13: BAR PLOT WITH COLOURS
# ============================================================

barplot(
  table(direction),
  col = c("red", "green", "blue")
)


# ============================================================
# PART 14: BAR PLOT WITH TITLE
# ============================================================

barplot(
  table(direction),
  col = c("red", "green", "blue"),
  main = "Directions of food delivery"
)


# ============================================================
# PART 15: BAR PLOT WITH LEGEND
# ============================================================

barplot(
  table(direction),
  col = c("red", "green", "blue"),
  main = "Directions of food delivery",
  legend.text = c("dir1", "dir2", "dir3")
)


# ============================================================
# PART 16: BAR PLOT WITH TITLE, LEGEND AND SUBTITLE
# ============================================================

barplot(
  table(direction),
  col = c("red", "green", "blue"),
  main = "Directions of food delivery",
  legend.text = c("dir1", "dir2", "dir3"),
  sub = "Three directions"
)


# ============================================================
# PART 17: COMPLETE BAR PLOT WITH AXIS LABELS
# ============================================================

barplot(
  table(direction),
  col = c("red", "green", "blue"),
  main = "Directions of food delivery",
  legend.text = c("dir1", "dir2", "dir3"),
  sub = "Three directions",
  xlab = "Food Delivery Directions",
  ylab = "Number of Deliveries"
)


# ============================================================
# END OF PDF CODE
# ============================================================