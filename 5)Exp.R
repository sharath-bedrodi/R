primesieve <- function(sieved, unsieved) {
  p <- unsieved[1]
  n <- unsieved[length(unsieved)]
  
  if (p^2 > n) {
    return(c(sieved, unsieved))
  } else {
    unsieved <- unsieved[unsieved %% p != 0]
    sieved <- c(sieved, p)
    return(primesieve(sieved, unsieved))
  }
}

result <- primesieve(c(), 2:200)
print(result)
