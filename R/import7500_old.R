#' imports old version of li7500 files
#' 
#' @importFrom purrr map_dfr


import7500_old <- function(list_files) {
  data <- list_files |>
    map_dfr(
      read_tsv,
      skip = 10,
      col_names = FALSE
    )
  col_names <- 
}