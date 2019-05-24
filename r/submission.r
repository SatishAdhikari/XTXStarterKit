#!/usr/bin/Rscript

# R submission
# 
# Implement your model below
# 
# 1. Use get_next_data to receive a row of data
# 2. Predict the value 

input <- file('stdin')
open(input, 'rb')

# Receives a line of data from standard input
#
# Standard input is fed into your algorithm
# ONLY after a prediction for the previous
# row of data is received.
get_next_data <- function() {
  readLines(input, n=1)
}

# Prints prediction standard out
#
# Use this function for submitting
# your actual prediction
submit_prediction <- function(pred) {
  write(pred, stdout()) 
}

# Prints to standard error
# 
# Use this for development / debugging
# Output sent to standard error will not
# be scored.
eprint <- function(msg) {
  write(msg, stderr())
}

### IMPLEMENT YOUR ALGORITHM BELOW ###
# 
# This sample algorithm naively sends 
# 1 as the prediction for every line
# of data
#
# IMPORTANT !!!
# 
# 1. You MUST use get_next_data() and submit_prediction(pred) 
# 	 below for your submissions to work correctly
#
# 2. get_next_data() CANNOT be called more then once
# 	 in a row without calling self.submit_prediction(pred).
while (TRUE) {
  tryCatch({
    
    # Read data
    # 
    # get_next_data() MUST be used to read the next now of data
    data <- get_next_data()

    # Guess 1 every time
    #
    # submit_prediction(pred) MUST be used submit your 
    # prediction for the current row of data
    submit_prediction(1)

  }, error=function(e){quit()})
} 
