% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timePlot-censored.R
\docType{methods}
\name{timePlot-censored}
\alias{timePlot,Date,lcens-method}
\alias{timePlot,Date,qw-method}
\alias{timePlot-censored}
\title{Censored Data Methods for Function \code{timePlot}}
\usage{
\S4method{timePlot}{Date,lcens}(x, y, Plot = list(name = "", what = "points",
  type = "solid", width = "standard", symbol = "circle", filled = TRUE, size =
  0.09, color = "black"), yaxis.log = FALSE, yaxis.rev = FALSE,
  yaxis.range = c(NA, NA), xaxis.range = range(x, na.rm = TRUE),
  ylabels = 7, xlabels = "Auto", xtitle = "",
  ytitle = deparse(substitute(y)), caption = "", margin = c(NA, NA, NA,
  NA), Censored = list(name = "", what = "points", symbol = "circle", filled =
  FALSE, size = 0.09, color = "black", bar = FALSE), ...)

\S4method{timePlot}{Date,qw}(x, y, Plot = list(name = "", what = "points",
  type = "solid", width = "standard", symbol = "circle", filled = TRUE, size =
  0.09, color = "black"), yaxis.log = FALSE, yaxis.rev = FALSE,
  yaxis.range = c(NA, NA), xaxis.range = range(x, na.rm = TRUE),
  ylabels = 7, xlabels = "Auto", xtitle = "",
  ytitle = deparse(substitute(y)), caption = "", margin = c(NA, NA, NA,
  NA), Censored = list(name = "", what = "points", symbol = "circle", filled =
  FALSE, size = 0.09, color = "black", bar = FALSE), ...)
}
\arguments{
\item{x}{the time/date data.}

\item{y}{the y-axis data.}

\item{Plot}{control parameters of the plot for uncensored data.}

\item{yaxis.log}{log-transform the y axis?}

\item{yaxis.rev}{reverse the y axis?}

\item{yaxis.range}{set the range of the y-axis.}

\item{xaxis.range}{set the range of the x-axis.}

\item{ylabels}{set up y-axis labels. See \code{\link{linearPretty}} for
details.}

\item{xlabels}{set up x-axis labels. See \bold{Details}.}

\item{xtitle}{the x-axis title.}

\item{ytitle}{the y-axis title.}

\item{caption}{the figure caption.}

\item{margin}{set up the plot area margins.}

\item{Censored}{control parameters of the plot for censored data.}

\item{...}{arguments for specific methods.}
}
\value{
Information about the graph.
}
\description{
Creates a plot of time-series data: selected methods for "lcens" 
and "qw" data.
}
\details{
The value for \code{xlabels} must be one of "full," the full month names;
"abbrev," abbreviations; or "letter," the first letter of the
month. The default is "Auto," which selects one of the rpevious options based on
the number of labels.
}
\keyword{hplot}
\keyword{methods}

