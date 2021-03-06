#' Merge list of data frames
#' 
#' @description
#' By calling \code{\link{Reduce}} upon a list of data frames, this function 
#' is a convenient wrapper around \code{\link{merge}} to assemble multiple data
#' frames in one go. Code originally taken from 
#' \url{https://stackoverflow.com/questions/8091303/merge-multiple-data-frames-in-a-list-simultaneously}.
#' 
#' @param x List. Multiple data frames.
#' @param by Character or Numeric. Column(s) used for merging.
#' @param all Logical. Determines whether non-intersecting records should be 
#' kept; defaults to \code{TRUE}. See \code{\link{merge}} for further details.
#' 
#' @author 
#' Florian Detsch
#' 
#' @seealso
#' \code{\link{merge}}, \code{\link{Reduce}}
#' 
#' @examples
#' ## sample data
#' set.seed(10)
#' ls_df <- list(data.frame(a = 1:10, b = 1:10), 
#'               data.frame(a = 5:14, c = 11:20), 
#'               data.frame(a = sample(20, 10), d = runif(10)))
#' 
#' ## merge data frames in one go
#' multiMerge(ls_df, by = "a", all = TRUE)
#' 
#' @export multiMerge
multiMerge <- function(x, by, all = TRUE) {
  
  ## merge list of data frames
  f <- function(...) merge(..., by = by, all = all)
  Reduce(f, x)
}