% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Math-censored.R
\docType{methods}
\name{Math-censored}
\alias{Math,lcens-method}
\alias{Math,mcens-method}
\alias{Math,qw-method}
\alias{Math-censored}
\title{Mathematical Transform Methods for \code{lcens} objects}
\usage{
\S4method{Math}{lcens}(x)

\S4method{Math}{mcens}(x)

\S4method{Math}{qw}(x)
}
\arguments{
\item{x}{the object to transform}
}
\description{
Some limited mathematical methods are possible and well-defined for
censored or water-quality data.
}
\examples{
log(as.lcens(c(1, 3), 2))

}
\keyword{manip}
\keyword{methods}

