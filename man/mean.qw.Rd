% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mean.qw.R
\name{mean.qw}
\alias{mean.qw}
\title{Arithmetic Mean}
\usage{
\method{mean}{qw}(x, lt.tol = 0.5, ...)
}
\arguments{
\item{x}{the water-quality data object.}

\item{lt.tol}{an arbitrary tolerance metric to drop interval-censoring. See \bold{Details}.}

\item{\dots}{further arguments passed to or from other methods.}
}
\value{
The mean of thw water-quality data as class "qw."
}
\description{
Computes the arithmetic mean of water-quality data. This function is intended 
primarily to compute a useful mean of a small set of data, for example to 
compute the mean of daily samples. See \bold{Note}.
}
\details{
The \code{lt.tol} argument can be used to collapse interval censored data, creating an
uncensored value, when the range of interval censored data is less than \code{lt.tol}
time the detection limit. This generally results in reasonable estimates of values for 
the intended purpose.
}
\note{
The mean and standard deviation of censored water-quality data should be computed
using \code{censStats}.
}
\seealso{
\code{\link{censStats}}
}
\keyword{censored}
\keyword{univariate}

