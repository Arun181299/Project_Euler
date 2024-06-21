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
