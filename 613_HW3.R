# JULIE-ANNA FEITOSA KETTLE
# DATA-613 HW 3

library(tidyverse)
library(dplyr)

Vector1 <- (c( 10, 19, 121, 83, 63, 7, 77, 61, 51, 97, 123, 41))
Vector1

# QUESTION 1***
length(Vector1)
Vector1[c(1, 12)]
Vector1[c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11)]

# QUESTION 2***
Vector1[(Vector1 < 60)]
Vector1[(!Vector1 > 60)]

# QUESTION 3***
Vector1[!(Vector1%%2 == 0) & !(Vector1%%3 == 0)]

output <- vector("double")
func <- function(vector_used) {
  for (i in seq_along(vector_used)) {
    output[[i]] <- vector_used[[i%%2 != 0]]
    output[[i]] <- vector_used[[i%%3 != 0]]
  }
}
func(Vector1)

Vector1%>%
  filter(i%%2 != 0 & i%%3 != 0)
# QUESTION 4
Vector1[is.na(Vector1)]
is.na(Vector1)

# QUESTION 5
myList <- list(TRUE, 12.35, "pear", 48, c = 3.8, list(23, "team"))
myList

str(myList)

# QUESTION 6
myList[1:3]

# QUESTION 7
myList <- list(TRUE, 12.35, p = "pear", 48, c = 3.8, list(23, "team"))
myList$p

# QUESTION 8
quadA <- function(a, b, c) {
  c(
    (-b + sqrt(b^2 - 4 * a * c)) / (2 * a),
    (-b - sqrt(b^2 - 4 * a * c)) / (2 * a)
  )
}

quadA(1, -3, -28)
quadA(1, 1, -30)
quadA(3, 14, 8)
quadA(2, 11, -6)
