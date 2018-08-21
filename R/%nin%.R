#' %nin%
#'
#' Opposite of %in%
#'
#' @param x vector: the values to be matched
#' @param y vector, list, or data frame: the value to be matched against
#'
#'
#' @keywords render
#' @export
#' @examples
#' # Not run:
#' 
'%nin%' <- function(x,y) !('%in%'(x,y))
