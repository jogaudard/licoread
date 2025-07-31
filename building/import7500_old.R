#' imports old version of li7500 files
#' @param list_files list of files including path
#' @return a df with the content of all the files and file name as id
#' @importFrom purrr map_dfr


import7500_old <- function(list_files) {

  all_files <- list_files |>
    map_dfr(import7500_old_oneobs)

  all_files
}
