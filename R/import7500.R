#' imports data from li7500 setup
#' @description 
#' @param 
#' 
#' 


import7500 <- function(path,
                       version = "till2023",
                       plotinfo = TRUE) {

list_files <- list.files(
  path,
  full.names = TRUE,
  recursive = TRUE
)

if (version == "till2023") {
    output <- import7500_old(list_files)
}
output
                       }