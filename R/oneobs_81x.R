#' reading a single measurement from 81x file
#' @description reads a single measurement from a licor .81x file
#' @param start line number at which the measurement starts
#' @param end line number at which the measurement ends
#' @param all_obs list of all the lines from the full file
#' @param file filepath to the 81x files
#' @importFrom readr read_tsv
#' @importFrom yaml read_yaml
#' @importFrom tibble enframe
#' @importFrom tidyr pivot_wider unnest nest
#' @importFrom dplyr bind_cols mutate across everything
#' @importFrom stringr str_detect
#' @return a df with 1 row with the meta data of the measurement
#' and raw data nested

oneobs_81x <- function(
  start,
  end,
  all_obs,
  file
) {
  one_obs <- all_obs[start:end]

  # location of meta and data and col names

  first_el <- substr(one_obs, start = 1, stop = 1)


  # location of data row are where as.numeric did not produce NA
  data_loc <- which(!is.na(suppressWarnings(as.numeric(first_el))))

  # row with col names  is just before the first numeric row
  col_names_loc <- min(data_loc) - 1
  data_loc <- append(data_loc, col_names_loc, 0)

  # read data
  # we want to skip everything before the colnames
  line_skip <- min(data_loc) - 2 + start
  # skipping everything after the last row of data
  line_max <- max(data_loc) - min(data_loc)

  # read tsv is slower, but much safer than re using the one_obs list
  # (in case there are empty cells)
  # we suppress the warning because the last column tends to be empty,
  # which throws parsing issues
  # obs_data <- suppressWarnings(readr::read_delim(
  obs_data <- suppressWarnings(read_tsv(
    file,
    na = c("", "NA", "\\R"),
    skip = line_skip,
    n_max = line_max,
    show_col_types = FALSE,
    progress = FALSE
  ))
  # the problem is that the annotation col (last one) is empty (no tab, just a
  # new line), which read_tsv does not like

  # the problem with the col type is that some values are intepreted as
  # character when they should be numerical
  # because leading 0 are read as character by readr

  obs_data <- obs_data |>
    mutate(
      across(everything(), ~ if (all(is.na(.))) as.character(.) else .),
      across(everything(), ~ if (all(
        str_detect(., "^\\d*[.]\\d*$|^\\d*$"), na.rm = TRUE
      )) as.numeric(.) else .)
    )

  # read meta data

  metadata <- read_yaml(text = one_obs[-data_loc])

  table_meta <- enframe(metadata) |> # make a df out of the list
    # each element of the list is now a column
    pivot_wider(names_from = "name", values_from = "value") |>
    unnest(names(metadata))


  one_obs_tbl <- bind_cols(table_meta, obs_data) |>
    nest(data = names(obs_data))

  one_obs_tbl
}
