#' reads Li-COR files in a given location
#' 
#' 

licoread <- function(
    location,
    file_type = "auto"
) {
    list <- list.files(
    location,
    full.names = TRUE,
    recursive = TRUE
  )
}