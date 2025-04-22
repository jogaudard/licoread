#' to read the raw data
#' @param filepath name and path to the 82z archive
#' @param data_file name of the file with raw data
#' @param data_name vector of colnames
#' @param gases list of gases
#' @param filename name of the 82z archive
#' @return a long df with the actual data contained in the data file
#' @importFrom readr read_csv
#' @importFrom dplyr all_of mutate
#' @importFrom tidyr pivot_longer nest
#' @importFrom lubridate hms ymd

data_82z <- function(
  filepath,
  data_file,
  data_name,
  gases,
  filename
) {

  data_data <- unz(filepath, data_file) |>
    read_csv(
      skip = 3,
      col_names = data_name,
      show_col_types = FALSE,
      progress = FALSE
    )
  # cols with leading 0s get treated as character instead of double
  data_data <- data_data |>
    mutate(
      across(everything(), ~ if (all(is.na(.))) as.character(.) else .),
      across(everything(), ~ if (all(
        str_detect(., "^\\d*[.]\\d*$|^\\d*$"), na.rm = TRUE
      )) as.numeric(.) else .)
    )

  data_long <- data_data |>
    pivot_longer(all_of(gases), names_to = "gas", values_to = "f_conc") |>
    nest(.by = !c("gas", "f_conc"), .key = "gas_f_conc") |>
    mutate(
      f_fluxid = filename
    ) |>
    nest(.by = "f_fluxid")

  data_long

}
