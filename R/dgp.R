dgp <- function(y, theta, lambda, logged = TRUE) {

  den <-  log( theta ) + (y - 1) * log( theta + lambda * y ) - theta -
        y * lambda - lgamma(y + 1)
  if ( !logged )  den <- exp(den)
  den

}





