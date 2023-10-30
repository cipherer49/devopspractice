#creating a functiom
hello_function <- function(){
  print("hello")
}
hello_function()

#generating a custom function to calculate mean
mean_function <- function(a,b,c) {
   f <- a+b+c
   n <- 3
   mean_sol <- f/n
   print(mean_sol)
   
}
ans_mean <- mean_function(10,20,30) 
ans_mean

#harder approach
mean_auto <- function(data) {
  if(length(data) == 0) {
    stop("vector is empty")
  }
  return(sum(data)/length(data))
}
v1 <- c(10,20,30,40)
mean_a_ans <- mean_auto(v1)
print(mean_a_ans)

#generating a custom function to calculate median
custom_median <- function(data) {
  if (length(data) == 0) {
    stop("Input vector is empty")
  }
  sorted_data <- sort(data)
  n <- length(sorted_data)
  
  if (n %% 2 == 1) {
    # For odd-length vectors, return the middle element
    median_value <- sorted_data[(n + 1) %/% 2]
  } else {
    # For even-length vectors, return the average of the two middle elements
    lower_middle <- sorted_data[n %/% 2]
    upper_middle <- sorted_data[(n %/% 2) + 1]
    median_value <- (lower_middle + upper_middle) / 2
  }
  
  return(median_value)
}
my_vector <- c(1, 3, 2, 4, 5,6)
result <- custom_median(my_vector)
cat(result)

#generating a custom function to calculate standard deviation
custom_std_deviation <- function(data) {
  if (length(data) <= 1) {
    stop("Input vector must contain at least two elements")
  }
  
  mean_value <- mean(data)
  n <- length(data)
  
  sum_of_squared_diff <- sum((data - mean_value)^2)
  
  standard_deviation <- sqrt(sum_of_squared_diff / (n - 1))
  
  return(standard_deviation)
}

std_ans <- custom_std_deviation(my_vector)
print(std_ans)