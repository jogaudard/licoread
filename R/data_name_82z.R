#' create colnames for data tibble
#' @param filepath name and path to the 82z archive
#' @param data_file name of the file with raw data
#' @return a character vector or the colnames of the data file
#' @importFrom readr read_csv
#' @importFrom tibble tibble
#' @importFrom tidyr unite
#' @importFrom dplyr pull


data_name_82z <- function(
  filepath,
  data_file
) {

  data_name1 <- unz(filepath, data_file) |>
    read_csv(
      n_max = 1,
      col_names = FALSE,
      show_col_types = FALSE,
      progress = FALSE
    )

  data_name1 <- as.character(data_name1[1, ])

  data_name2 <- unz(filepath, data_file) |>
    read_csv(
      skip = 1,
      n_max = 1,
      col_names = FALSE,
      show_col_types = FALSE,
      progress = FALSE
    )

  data_name2 <- as.character(data_name2[1, ])

  data_name <- tibble(
    data_name1,
    data_name2
  ) |>
    unite(names) |>
    pull(names) |>
    as.character()

  data_name

}
