#' to read one measurement from the 82z archive
#' @param filepath path to the 82z archive
#' @param data_file name of the file with raw data
#' @param meta_file name of the file with meta data
#' @param regex_file regex expression matching the name of the 82z file. Here
#' in case the user has a different than the default and for easier updates.
#' @return a tibble with all the data and metadata from one observation
#' (one file)
#' @importFrom rlang .data
#' @importFrom dplyr filter mutate case_when select bind_cols left_join
#' @importFrom tidyr unite pivot_wider pivot_longer nest
#' @importFrom stringr str_extract

oneobs_82z <- function(
  filepath,
  data_file,
  meta_file,
  regex_file
) {

  filename <- str_extract(filepath, regex_file)

  metadata <- metadata_82z(
    filepath = filepath,
    meta_file = meta_file
  )

  meta_df <- metadata |>
    filter(is.na(.data$group))

  names_meta_df <- names_df(meta_df)

  meta_df <- meta_df |>
    unite("name", all_of(names_meta_df))

  # the following 4 blocks should be written as a function when I have time
  meta_df_val <- meta_df |>
    filter(!is.na(.data$VALUE)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!c("group", "UNITS", "SPEC")) |>
    pivot_wider(names_from = "name", values_from = "VALUE")

  meta_df_spec <- meta_df |>
    filter(!is.na(.data$SPEC)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!c("group", "UNITS", "VALUE")) |>
    pivot_wider(names_from = "name", values_from = "SPEC")

  meta_df <- bind_cols(
    meta_df_val,
    meta_df_spec
  )


  meta_cols <- metadata |>
    filter(!is.na(.data$group))

  names_meta_cols <- names_df(meta_cols)

  meta_cols <- meta_cols |>
    unite("name", all_of(names_meta_cols))

  meta_cols_val <- meta_cols |>
    filter(!is.na(.data$VALUE)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!c("UNITS", "SPEC")) |>
    pivot_wider(names_from = "name", values_from = "VALUE")

  meta_cols_spec <- meta_cols |>
    filter(!is.na(.data$SPEC)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!c("UNITS", "VALUE")) |>
    pivot_wider(names_from = "name", values_from = "SPEC")

  meta_cols <- left_join(
    meta_cols_val,
    meta_cols_spec,
    by = "group"
  ) |>
    mutate(
      group = paste(.data$FLUX_GAS_SOURCE, .data$FLUX_GAS, sep = "_")
    )



  gases <- meta_cols$group

  data_name <- data_name_82z(
    filepath = filepath,
    data_file = data_file
  )

  data_data <- data_82z(
    filepath = filepath,
    data_file = data_file,
    data_name = data_name,
    gases = gases,
    filename = filename
  )

  data_units <- units_82z(
    filepath = filepath,
    data_file = data_file,
    data_name = data_name,
    filename = filename
  )

  data <- data_data |>
    left_join(data_units, by = "f_fluxid")


  oneobs_data <- bind_cols(data, meta_df)

  oneobs_data

}
