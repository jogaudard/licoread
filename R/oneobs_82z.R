#' to read one measurement from the 82z archive
#' @param path path to the 82z archive
#' @param filename name of the 82z archive
#' @param data_file name of the file with raw data
#' @param meta_file name of the file with meta data
#' @importFrom rlang .data
#' @importFrom dplyr filter mutate case_when select bind_cols left_join
#' @importFrom tidyr unite pivot_wider pivot_longer nest

oneobs_82z <- function(
  path,
  filename,
#   filepath,
  data_file,
  meta_file
) {

    # filename <- str_extract(filepath, )
  filepath <- paste0(path, filename)
  # extract filename from filepath and work with filepath in the input (easire with dir_ls)

  metadata <- metadata_82z(
    filepath = filepath,
    meta_file = meta_file
  )

  meta_df <- metadata |>
    filter(is.na(.data$group))

  names_meta_df <- names_df(meta_df)

  meta_df <- meta_df |>
    unite("name", all_of(names_meta_df)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!c("group", "UNITS")) |>
    pivot_wider(names_from = "name", values_from = "VALUE")


  meta_cols <- metadata |>
    filter(!is.na(.data$group))

  names_meta_cols <- names_df(meta_cols)

  meta_cols <- meta_cols |>
    unite(name, all_of(names_meta_cols)) |>
    mutate(
      name = case_when(
        is.na(.data$UNITS) ~ .data$name,
        !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
      )
    ) |>
    select(!"UNITS") |>
    pivot_wider(names_from = "name", values_from = "VALUE") |>
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
    left_join(data_units, by = "fluxid")
  

  oneobs_data <- bind_cols(data, meta_df)

  oneobs_data



}