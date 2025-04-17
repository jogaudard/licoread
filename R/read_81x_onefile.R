#' reads 81x licor file
#' @description reads a .81x file with several measurements
#' @param file filepath the the 81x file to read
#' @return a nested tibble with the meta data from each measurements as row and
#' the raw data nested
#' @importFrom readr read_lines_raw read_lines
#' @importFrom purrr map
#' @importFrom dplyr bind_rows

read_81x_onefile <- function(
  file
) {
  # use readlines to create a list

  raw_lines <- read_lines_raw(file)
  # use the empty line as a slicer
  length <- lengths(raw_lines)
  zero_lines <- which(length == 0)

  all_obs <- read_lines(file)

  start <- c(1, (zero_lines[-length(zero_lines)]))
  end <- zero_lines



  output <- purrr::map2(
    start,
    end,
    oneobs_81x,
    all_obs,
    file,
    .progress = TRUE
  ) |>
    bind_rows()


  output
}
