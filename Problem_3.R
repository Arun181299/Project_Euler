## identifying the largest prime number for the given number
maximum_prime_factor <- function(number) {
  factors <- c()
  x <- 2:number
  for (i in x) {
    while (number %% i == 0 ){
      factors <- append(factors, i)
      number <- number/i
    }
  }
  return(tail(factors, n=1))
}

print(maximum_prime_factor(600851475143))

#optimized code for the above

maximum_prime_factor <- function(number) {
  if (number <= 1) {
    return(NA)  # Return NA for non-positive numbers
  }
  
  max_factor <- 1
  # Check for the number of 2s that divide number
  while (number %% 2 == 0) {
    max_factor <- 2
    number <- number / 2
  }
  
  # Number must be odd at this point, check for odd factors
  for (i in seq(3, sqrt(number), by = 2)) {
    while (number %% i == 0) {
      max_factor <- i
      number <- number / i
    }
  }
  
  # If number is still a prime number greater than 2
  if (number > 2) {
    max_factor <- number
  }
  
  return(max_factor)
}

print(maximum_prime_factor(600851475143))
