pgp <- function(y, theta, lambda) {

  n <- length(y)
  prob <- numeric(n)
  x <- 0:max(y)
  a <- log( theta ) + (x - 1) * log( theta + lambda * (x) ) - theta - x * lambda - lgamma( x + 1 )
  b <- cumsum( exp(a) )

  for ( i in 1:n )  prob[i] <- sum( b * ( y[i] == x ) )
  prob

}
