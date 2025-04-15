#' to read several 82z files
#' @param path location of the 82z files
#' @param data_file name of the file with raw data
#' @param meta_file name of the file with meta data
#' @param regex_file regex expression matching the name of the 82z file. Here
#' in case the user has a different than the default and for easier updates.
#' @importFrom purrr map list_rbind

read_82z <- function(
  path,
  data_file = "data.csv",
  meta_file = "metadata.json",
  regex_file = "(\\w*-)*\\w*(?=([.]82z$))"
) {
  list <- list.files(
    path,
    pattern = "*.82z$",
    full.names = TRUE,
    recursive = TRUE
  )

  list <- list |>
    map(\(x) {
      oneobs_82z(
        filepath = x,
        data_file = data_file,
        meta_file = meta_file,
        regex_file = regex_file
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
