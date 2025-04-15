#' finds out the file type for licoread
#' @param file_list list of files found in the location
#' @return a single character string indicating the file type
#' @importFrom stringr str_extract
#' @importFrom dplyr distinct

licoread_auto <- function(
  file_list
) {
  extension <- str_extract(file_list, "(?<=[.])\\w*$") |>
    unique()

  if (length(extension) > 1) {
    stop("More than one file types found, please provide it manually.")
  }

  extension
}
