multipleof3or5 <- function(number) {
  sum <- 0
  for (i in 1:(number-1)) {
    if (i%%3==0 || i%%5==0) {
      sum = sum + i
    } 
  }
  return(sum)
}
multipleof3or5(1000)
