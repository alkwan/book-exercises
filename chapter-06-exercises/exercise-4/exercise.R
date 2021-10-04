# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(char1, char2) {
  length1 <- nchar(char1)
  length2 <- nchar(char2)
  bigger <- max(length1, length2)
  smaller <- min(length1, length2)
  bigger >= 2 * smaller
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
print(paste("the first is bigger:", is_twice_as_long('hello', 'no')))
print(paste("the second is bigger:", is_twice_as_long('no', 'hello')))
print(paste("are no and no twice as long:", is_twice_as_long('no', 'no')))
print(paste("is hello? twice as long as hello:", is_twice_as_long('hello?', 'hello')))
print(paste("is hello twice as long as hello?", is_twice_as_long('hello', 'hello?')))

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(sentence_1, sentence_2) {
  length1 <- nchar(sentence_1)
  length2 <- nchar(sentence_2)
  
  result <- "Your strings are the same length!"
  
  if (length1 > length2) {
    result <- paste("Your first string is longer by", length1 - length2, "characters")
  } else if (length2 > length1) {
    result <- paste("Your second string is longer by", length2 - length1, "characters")
  }
  
  result
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions!
print(describe_difference("this is longer", "this is short"))
print(describe_difference("short", "longer!!"))
print(describe_difference("no", "no"))
