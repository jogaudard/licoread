#' reading several 81x files in a folder
#' @description reads several .81x files with several measurements
#' @param location location of the files
#' @return a nested tibble with the meta data from each measurements as row and
#' the raw data nested
#' @importFrom purrr map list_rbind

read_81x <- function(
  location
) {
  list <- list.files(
    location,
    pattern = "*.81x$",
    full.names = TRUE,
    recursive = TRUE
  )

  list <- list |>
    map(\(x) {
      read_81x_onefile(
        file = x
      )
    },
    .progress = list(
      type = "iterator",
      format = "Importing files {cli::pb_bar} {cli::pb_percent}",
      clear = TRUE
    ))

  output <- list_rbind(list)

  output
}
