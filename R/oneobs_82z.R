#' to read one measurement from the 82z archive
#' @param filepath name and path to the 82z archive
#' @param data_file name of the file with raw data
#' @param meta_file name of the file with meta data
#' @importFrom rlang .data
#' @importFrom dplyr filter

oneobs_82z <- function(
    path,
    filename,
    data_file = "data.csv",
    meta_file = "metadata.json"
) {

    filepath <- paste0(path, filename)

    metadata <- metadata_82z(
        filepath = filepath,
        meta_file = meta_file
    )

    meta_df <- metadata |>
        filter(is.na(.data$group))
    
    names_meta_df <- names_df(meta_df)
    
    meta_df <- meta_df |>
       unite(name, names_meta_df) |>
       mutate(
        name = case_when(
            is.na(.data$UNITS) ~ name,
            !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
        )
       ) |>
       select(!c("group", "UNITS")) |>
       pivot_wider(names_from = "name", values_from = "VALUE")
        

    meta_cols <- metadata |>
        filter(!is.na(.data$group))
    
    names_meta_cols <- names_df(meta_cols)
    
    meta_cols <- meta_cols |>
        unite(name, names_meta_cols) |>
        mutate(
            name = case_when(
                is.na(.data$UNITS) ~ name,
                !is.na(.data$UNITS) ~ paste(.data$name, .data$UNITS, sep = "_")
            )
        ) |>
        select(!"UNITS") |>
        pivot_wider(names_from = "name", values_from = "VALUE") |>
        mutate(
            group = paste(.data$FLUX_GAS_SOURCE, .data$FLUX_GAS, sep = "_")
        ) #|>
        # pivot_longer(!group)

    pivot <- meta_cols$group

    data <- data_82z(
        filepath = filepath,
        data_file = data_file
    )

    data_long <- data |>
        pivot_longer(pivot, names_to = "gas", values_to = "conc") |>
        nest(.by = .data$gas)

    oneobs_data <- bind_cols(data_long, meta_df) |>
        mutate(
            fluxid = filename
        )

    oneobs_data

    # list_meta_cols <- split(meta_cols, meta_cols$group)# |>
        # map(~ .x |> select(!group))

}