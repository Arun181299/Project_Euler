even_fib_sum <- function(limit) {
  a <- 0
  b <- 1
  even_sum <- 0
  while (a <= limit) {
    if (a %% 2 == 0) {
      even_sum <- even_sum + a
    }
    a <- b
    b <- b + a
  }
  return(even_sum)
}

print(even_fib_sum(4000000))
