\name{gehanScores}
\alias{gehanScores}
\title{Gehan Test Scores}
\usage{
  gehanScores(x, y, na.rm = FALSE)
}
\arguments{
  \item{x}{any object that can be converted to class
  "mcens." Missing values are permitted and result in
  corresponding missing values in the output.}

  \item{y}{any object that can be converted to class
  "mcens." Missing values are permitted but result in
  missing values in the output unless \code{na.rm} is
  \code{TRUE}. See \bold{Details}.}

  \item{na.rm}{remove missing values from \code{y} before
  comparing to \code{x}?}
}
\value{
  A numeric vector that is the result of the comparison of
  each value in \code{x} to all values in \code{y}. It is
  the equivalent of the "h" score in described by Helsel,
  but the signs are reversed so that larger values in
  \code{x} have larger values in the output.
}
\description{
  Compute Gehan test scores that compare the values in one
  group to the values in another group.
}
\details{
  Details
}
\references{
  Gehan, E.A., 1965, A generalized Wilcoxon test for
  comparing arbitraritly singly censored samples:
  Biometrika, v. 52, p. 203-223.\cr

  Helsel, D.R. 2012, Statistics for Censored Environmental
  Data Using Minitab and R: New York, Wiley, 324 p.\cr
}
\seealso{
  \code{\link{survdiff}}, \code{\link{survfit}},
  \code{\link{lcens-class}}
}
