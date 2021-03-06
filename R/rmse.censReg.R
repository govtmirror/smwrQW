#' Root-Mean-Squared Error
#'
#' Computes the root-mean-squared error (RMSE) of a censored regression object: 
#'method for "censReg" object.
#'
#' @param x the output from \code{censReg}.
#' @param \dots further arguments passed to or from other methods.
#' @return The estimated root-mean-squared error, also know as the residual
#'standard error.
#' @seealso \code{\link{censReg}}
#' @importFrom smwrStats rmse
#' @export
#' @method rmse censReg
rmse.censReg <- function(x, ...) {
  ## Coding history:
  ##    2012Sep25 DLLorenz Original Coding
  ##    2012Dec31 DLLorenz Roxygenized
  ##    2012Dec31          This version
  ##
  if(x$IERR > 0)
    return(NA)
  NPAR <- x$NPAR
  if(x$method == "AMLE")
    rmse <- sqrt(x$PARAML[NPAR+1L])
  else
    rmse <- sqrt(x$PARMLE[NPAR+1L]*(x$NOBSC/(x$NOBSC - NPAR)))
  return(rmse)
}
