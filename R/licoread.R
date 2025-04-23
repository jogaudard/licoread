#' reads Li-COR files in a given location
#' @param location location of the files
#' @param file_type type of file (82z or 81x). If "auto" (default), the
#' function will try to detect it by itself.
#' @param file_type_list list of file types
#' @param data_file name of the file with raw data
#' @param meta_file name of the file with meta data
#' @param regex_file regex expression matching the name of the 82z file. Here
#' in case the user has a different than the default and for easier updates.
#' @param glimpse `glimpse = n` randomly selects n files to be imported.
#' This allows for testing the setup before importing a potentially large list
#' of files which will take time and be difficult to handle.
#' @importFrom purrr map list_rbind
#' @importFrom stringr str_match
#' @importFrom stats na.omit
#' @return a tibble (nested or not depending on raw data) containing all the
#' data from the raw files present at the location provided
#' @export
#' @examples
#' path_81x <- system.file("extdata/81x", package = "licoread")
#' licoread(path_81x)
#' path_82z <- system.file("extdata/82z", package = "licoread")
#' licoread(path_82z)

licoread <- function(
  location,
  file_type = "auto",
  file_type_list = c(
    "82z",
    "81x",
    "auto"
  ),
  data_file = "data.csv",
  meta_file = "metadata.json",
  regex_file = "(\\w*-)*\\w*(?=([.]82z$))",
  glimpse = FALSE
) {
  file_list <- list.files(
    location,
    full.names = TRUE,
    recursive = TRUE
  )

  file_type <- match.arg(file_type, file_type_list)

  if (file_type == "auto") {

    file_type <- licoread_auto(file_list)
  }

  if (is.numeric(glimpse)) {
    message(paste0(glimpse, " files will be imported"))

    if (length(file_list) < glimpse) {
      stop("Number of files higher than glimpse size.")
    }

    sample_list <- sample(seq_along(file_list), glimpse)


    file_list <- file_list[sample_list]

    list <- str_extract(file_list, "(\\w*-)*\\w*[.]\\w*$") |>
      paste(collapse = "\n")

    message(cat(paste0("Files selected:", "\n", list)))
  }

  if (file_type == "82z") {

    file_list <- str_match(file_list, ".*[.]82z$") |>
      na.omit()

    obs_list <- file_list |>
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
  }

  if (file_type == "81x") {

    file_list <- str_match(file_list, ".*[.]81x$") |>
      na.omit()

    obs_list <- file_list |>
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
  }

  output <- list_rbind(obs_list)

  attr(output, "file_type") <- file_type

  output
}
