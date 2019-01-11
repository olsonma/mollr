#' renderMac
#'
#' Renders file on mounted drive when running on a Mac. Must set working directory to file location.
#'
#' Rendered file will be put in "~/Desktop"
#' @param filename Character string that is the file name.
#' @details Must set working directory to file location.
#'
#'
#' @keywords render
#' @export
#' @examples
#' # Not run:

renderMac <- function(filename){
  if(getwd() %in% "/Users/mollyolson") stop("Must set working directory to file location")
  if(filename %nin% list.files()) stop("File doesn't exist in working directory")
  rmarkdown::render(input = paste0(getwd(),"/",filename), output_dir = "~/Desktop/ReportGeneration", intermediates_dir = "~/Desktop/ReportGeneration")
}
