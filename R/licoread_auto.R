#' finds out the file type for licoread
#' @importFrom stringr str_extract
#' @importFrom dplyr distinct

licoread_auto <- function(
    list
) {
    extension <- str_extract(list, "(?<=[.])\\w*$") |>
    unique()

        if (length(extension) > 1) {
            stop("More than one file types found, please provide it manually.")
        }
    
    extension
}