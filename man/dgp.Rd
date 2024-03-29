\name{Density computation of the generalized Poisson distribution}
\alias{dgp}
\title{
Density computation of the generalized Poisson distribution
}

\description{
Density computation of the generalized Poisson distribution.
}

\usage{
dgp(y, theta, lambda, logged = TRUE)
}

\arguments{
\item{y}{
A vector with non negative integer values.
}
\item{theta}{
The value of the \eqn{\theta} parameter.
}
\item{lambda}{
The value of the \eqn{\lambda} parameter.
}
\item{logged}{
Should the logarithm of the density values be computed? The default value is TRUE.
}
}

\details{
The density of the generealized Poisson distribution is computed.
}

\value{
A vector with the logged density values.
}

\references{
Nikoloulopoulos A.K. & Karlis D. (2008). On modeling count data: a comparison of some well-known discrete distributions. Journal of Statistical Computation and Simulation, 78(3): 437--457.

Demirtas H. (2017). On accurate and precise generation of generalized Poisson variates. Communications in Statistics - Simulation and Computation, 46(1): 489--499.
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}
\seealso{
\code{\link{rgp}, \link{pgp} }
}

\examples{
y <-  rgp(1000, 10, 0.5, method = "Inversion")
a <- gp.mle(y)
f <- dgp(y, a[1], a[2])
sum(f)
}

