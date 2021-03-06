% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/censQtiles.CI.R
\name{censQtiles.CI}
\alias{censQtiles.CI}
\title{Quantiles with Confidence Limits}
\usage{
censQtiles.CI(x, probs = 0.5, CI = 0.9, bound = c("two.sided", "upper",
  "lower"))
}
\arguments{
\item{x}{any R object than can be converted to class "lcens" to compute the sample 
quantiles. Missung values are permitted and are removed before computing the quantiles.}

\item{probs}{numeric vector of desired probabilities with values between 0
and 1.}

\item{CI}{the minimum desired confidence interval for each level specifed in
probs.}

\item{bound}{a character string indicating the desired bounds, "two.sided"
means the two-sided interval, "upper" means the upper bound of the interval,
and "lower" means the lower bound of the interval. Only a single character
is needed. The lower confidence limit is \code{-Inf} when \code{bound} is
"upper" and the upper confidence limit is \code{Inf} when \code{bound} is
"lower."}
}
\value{
A matrix of sample quantiles, the lower confidence limit, the upper
confidence limit, and the probability represented by the confidence interval
corresponding to the probs levels in the sorted x data. Missing values denote
values less than the minimum (either censored or uncensored) value. The minimum
value is included as the "minimum" attribute of the matrix. The maximum
value is included as the "maximum" attribute of the matrix.
}
\description{
Computes sample quantiles and confidence limits of left-censored data 
for specified probabilities.
}
\details{
The \code{survfit} function in the \code{survival} package is used to compute
the flipped Kaplan-Meier statistics. The type of confidence interval is "plain," which
produces symmetric confidence intervals that maintain consistency when back flipping the 
estimates and is consisten with the B-C method described by Helsel (2012).
}
\examples{

## Generate a random sample
set.seed(222)
XX.rn <- rexp(32)
# Compare uncensored to the binomial method
censQtiles.CI(XX.rn, probs=c(.25, .5, .75))
qtiles.CI(XX.rn, probs=c(.25, .5, .75))

}
\references{
Helsel, D.R. 2012, Statistics for censored environmental data 
using Minitab and R: New York, Wiley, 324 p.
}
\seealso{
\code{\link{censQuantile}}
}
\keyword{univar}

