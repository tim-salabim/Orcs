#' Factor with unsorted levels
#' 
#' @description
#' Casting \code{\link{factor}} upon a (\code{character}) vector usually 
#' produces an object of class 'factor' with levels ordered alphabetically. 
#' Although this seems reasonable in most cases, the automated ordering of 
#' factor levels is seldomly desirable in the context of visualization, e.g. 
#' when working with tiled \strong{lattice} or \strong{ggplot2} figures. This
#' function returns a \code{factor} with levels ordered according to their first
#' appearance in the supplied vector.
#' 
#' @param x Character vector with elements to be converted to class 'factor'. 
#' @param ... Further arguments passed on to \code{\link{factor}}.
#' 
#' @author 
#' Florian Detsch
#' 
#' @seealso
#' \code{\link{factor}}
#' 
#' @examples
#' mnth <- month.abb
#' 
#' ## factor levels are being sorted
#' fc_mnth <- factor(mnth)
#' levels(fc_mnth)
#' 
#' ## factor levels remain unsorted
#' fc_mnth2 <- unsortedFactor(mnth)
#' levels(fc_mnth2)
#' 
#' @export unsortedFactor
unsortedFactor <- function(x, ...) {
  
  fc_x <- factor(x, ...)
  levels(fc_x) <- unique(x)

  return(fc_x)
}