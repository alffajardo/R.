#### Intermidiate R Datacamp

## relational operartos how objects relate to others
T==F
F==F
T==F
F==F
"hello" == "goodbye"
3==3
3==2
3 > 2

# Comparison of logicals
T==F

# Comparison of numerics
-6*14 !=17-101

# Comparison of character strings
'useR'=='user'

# Compare a logical with a numeric
T==1
# Comparison of numerics
-6*5+2 >= -10+1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
T>F
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days
linkedin <= 5

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views ==13

# When is views less than or equal to 14?
views <= 14
# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20

# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook <10

# When were one or both visited at least 12 times?
linkedin >= 12  |x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))facebook >= 12

# li_df is pre-loaded in your workspace

# Select the second column, named day2, from li_df:
second <- li_df["day2"]


# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
length(extremes)

# Solve it with a one-liner
sum(extremes==TRUE)

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15){
  print("You're so puplar!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}



# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print ("Try to be more visible!")
}
# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}
# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li > 15 & fb > 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
print(sms)

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14 
# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80 ) {
    break
  }
  # The linkedin vector has already been defined for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  
  
  # Loop version 1
  for (view in linkedin) {
    print(view)
  }
  
  
  
  # Loop version 2
  for (view in 1:length(linkedin)) {
    print(linkedin[view])
  }
  
  
  # The nyc list is already specified
  nyc <- list(pop = 8405837, 
              boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
              capital = FALSE)
  
  # Loop version 1
  for (info in nyc) {
    print(info)
  }
  
  # Loop version 2
  for (i in 1:length(nyc)) {
    print(nyc[[i]])
  }
  
  # The tic-tac-toe matrix ttt has already been defined for you
  
  # The tic-tac-toe matrix ttt has already been defined for you
  
  # define the double for loop
  for (i in 1:nrow(ttt)) {
    for (j in 1:ncol(ttt)) {
      print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
    }
  }
  
  # The tic-tac-toe matrix ttt has already been defined for you
  
  # define the double for loop
  for (i in 1:nrow(ttt)) {
    for (j in 1:ncol(ttt)) {
      print(paste("On row", i, "and column", j, "the board contains", ttt[i,j]))
    }
  }
  
  
  # The linkedin vector has already been defined for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  
  # Extend the for loop
  for (li in linkedin) {
    if (li > 10) {
      print("You're popular!")
    } else {
      print("Be more visible!")
    }
    
    # Add if statement with break
    if (li > 16) {
      print("This is ridiculous, I'm outta here!")
      break
    }
    
    # Add if statement with next
    else if (li < 5) {
      
      print("This is too embarrassing!")
      next
    }
    
    print(li)
  }
  
  # Pre-defined variables
  rquote <- "r's internals are irrefutably intriguing"
  chars <- strsplit(rquote, split = "")[[1]]
  
  # Initialize rcount
  rcount <- 0
  
  # Finish the for loop
  for (char in chars) {
    if (char=="r") {
      rcount <- rcount + 1
      
    } 
    if (char=="u") {
      break
      
    }
  }
  
  # Print out rcount
  print(rcount)
  
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  facebook <- c(17, 7, 5, 16, 8, 13, 14)
  
  # Calculate average number of views
  avg_li <- mean(linkedin)
  avg_fb <- mean(facebook)
  
  
  # Inspect avg_li and avg_fb
  
  avg_li
  avg_fb
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  facebook <- c(17, 7, 5, 16, 8, 13, 14)
  
  # Calculate average number of views
  avg_li <- mean(linkedin)
  avg_fb <- mean(facebook)
  
  
  # Inspect avg_li and avg_fb
  
  avg_li
  avg_fb
  
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  facebook <- c(17, 7, 5, 16, 8, 13, 14)
  
  # Calculate the mean of the sum
  avg_sum <- mean(linkedin+facebook )
  
  # Calculate the trimmed mean of the sum
  avg_sum_trimmed <- mean(linkedin+facebook,trim=0.2)
  
  # Inspect both new variables
  avg_sum
  avg_sum_trimmed
  
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, NA, 17, 14)
  facebook <- c(17, NA, 5, 16, 8, 13, 14)
  
  # Basic average of linkedin
  mean(linkedin)
  
  # Advanced average of linkedin
  mean(linkedin,na.rm=T)
  
  # The linkedin and facebook vectors have already been created for you
  linkedin <- c(16, 9, 13, 5, NA, 17, 14)
  facebook <- c(17, NA, 5, 16, 8, 13, 14)
  
  # Calculate the mean absolute deviation
  mean(abs(linkedin - facebook),na.rm=T)
  
  # Create a function pow_two()
  pow_two <- function(x) {
    x ^ 2
  }
  
  # Use the function
  pow_two(12)
  
  # Create a function sum_abs()
  sum_abs <- function(x, y) {
    abs(x) + abs(y)
  }
  
  # Use the function
  sum_abs(-2, 3)
  