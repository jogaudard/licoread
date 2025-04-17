#' to create a nested tibble with the units of data
#' @param filepath name and path to the 82z archive
#' @param data_file name of the file with raw data
#' @param data_name vector of colnames
#' @param filename name of the 82z archive
#' @return a tibble with the units of the variables contained in the raw data
#' @importFrom readr read_csv
#' @importFrom tidyr pivot_longer nest
#' @importFrom dplyr all_of mutate

units_82z <- function(
  filepath,
  data_file,
  data_name,
  filename
) {

  data_units <- unz(filepath, data_file) |>
    read_csv(
      skip = 2,
      n_max = 1,
      col_names = data_name,
      show_col_types = FALSE,
      progress = FALSE
    ) |>
    mutate(
      f_fluxid = filename
    ) |>
    pivot_longer(!"f_fluxid", names_to = "variable", values_to = "unit") |>
    nest(.by = "f_fluxid", .key = "units")

  data_units
}
