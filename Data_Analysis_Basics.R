# Basic Syntax of R

# This is a comment
x = 10  # Assign 10 to x
print(x)

# Datatypes: Numeric, Character, Logical
num = 42
num1 = 42.4
char = "Hello, R"
log = TRUE

# Check Type
class(num)

# Reserved keywords in R include: if, else, for, function, True, False
##Vectors

# List

#Numeric
numbers = c(1, 2, 3, 4)

# Character
names = c("Alice", "Bob", "Charlie")

# Logical
flags = c(TRUE, FALSE, TRUE)

my_list = list("apple", 1, TRUE)

# Dictionary (Named List)
my_dict = list(name = "Alice", age = 25)

# Access Dictionary
my_dict$name # "Alice"
my_dict$age

# Set (using unique functions)
my_set <- unique(c(1, 2, 3))

matrix_data <- matrix(1:9, nrow = 3, byrow = TRUE)


### Aritmatic Operations

sum_result = 5 + 3 #Addition
sum_result = 5 - 3 #Substraction
prod_result = 5 * 3 #Multiplication
prod_result = 5 / 3 #Division

## Logical Operations
is_equal = 5 == 3 #FALSE
is_not_equal = 5 != 3
is_greater = 5 > 3 #TRUE

result = ifelse(5 > 10, "Yes", "No")

### Indexing
numbers = c(10, 20, 30, 40)
numbers[2] #20 (2nd element)

mean(c(1, 2, 3, 4, 5))
median(c(1, 2, 3, 4, 5)) #3
sum(c(1, 2, 3))          #6


### Conditional Statements

x = 10
if (x > 5) {
  print("Greater than 5")
} else {
    print("Less than or equal to 5")
}

x = 10
# Example with AND
if (x > 5 & x < 20) {
  print("x is between 5 and 20")
} else {
    print("x is not between 5 and 20")
}
if (x%%2 == 0) {
  print("x is Even")
} else if (x%%3 == 1) {
  print("x is Odd")
}
###[if (x%%1:9 == 0) {
  print("x is Even")
}
if (x%%1:9 != 1) {
  print("x is Even")
}]###NeedsCorrection***

x = 17

if (x < 10) {
  print("x is less than 10")
} else if (x >= 10 & x < 20) {
  print("x is between 10 and 20")
} else {
  print("x is 20 or greater")
}

# Loops

for (i in 1:5) {
  print(i/10)
}
for (i in 1:5) {
  print(i*10)
}
for (i in 1:5) {
  print(i+10)
}
for (i in 1:5) {
  y = i + 10
  #print(i+10)
  print(y)
}

for (i in names){
  print(i)
}

count_odd = 0
count_even = 0

for (i in 1:5){
  if (i %% 2 == 0) {
    print(i)
    print("Numbers is even")
    count_even = count_even + 1
  } else{
    print(i)
    print("number is odd")
    count_odd = count_odd + 1
  }
}
count_multiple = 3

    for (i in 1:100){
      if (i %% 3 == 0) {
        print(i)
        print("Multiples of 3")
        count_multiple = count_multiple + 1
        print(paste(
      }
      
count_multiple_of_3_5 = 0 
count_multiple_nof_3_5 = 0 
for (i in 1:100) {
  if (i %% 3 ==0 | i %% 5 ==0){
    print(i)
    print("multiple of 3")
    count_multiple_of_3_5 = count_multiple_of_3_5 + 1
  } else {
    print(i)
    print("multiple of 5")
    count_multiple_nof_3_5 = count_multiple_nof_3_5 + 1
  }
}
print(count_multiple_of_3_5)
print(count_multiple_nof_3_5)

my_funtion_add = function(a,b){
  return(a-b)
}
result = my_function_add(3,4)

my_function_subract = function(a,b){
  return(a,b)
}
result = my_function_subract(3,4)

#Define Function
checknumber = function(num){
  if (num>0){
    return("positive")
  }
  else if (num<0){
   return("negative")
  }else {
    return("zero")
  }
}


###TEST PROGRAM

# Define the function to evaluate lifestyle habits
evaluate_health = function(meals_per_day, walk_minutes_per_week) {
  if (meals_per_day > 3 && walk_minutes_per_week > 150) {
    return("Good")
  } else if (meals_per_day < 3 || walk_minutes_per_week < 150) {
    return("Average")
  } else if (meals_per_day < 3 && walk_minutes_per_week < 150) {
    return("Poor")
  }
}

# Example inputs
meals_per_day = as.numeric(readline(prompt = "Enter the number of meals per day: "))
walk_minutes_per_week = as.numeric(readline(prompt = "Enter the number of walking minutes per week: "))

health_status = evaluate_health(meals_per_day, walk_minutes_per_week)
cat("Your health status is:", health_status, "\n")

my_function_diet_exercise <- function(diet,exercise) {
  if (diet > 3 & exercise > 150) {
    return("Good")
  } else if (diet < 3 | exercise < 150) {
    return("Average")
  }else {
    return("Poor")
  }
}
print(my_function_diet_exercise)

#Read CSV
df = read.csv("Health_insurance.csv")

head(df)
tail(df)
colnames(df)
str(df)
summary(df)
mean(df$pid)

unique(df$smoker)

###Data Cleaning Example

data = data,frame(Name = c("Alice", "Bob", "Charlie"),
                  age = c(25, NA, 30))

cleaned_data = na.omit(data) # Remove rows with NA

#Install.packages

library(leaflet)

library()