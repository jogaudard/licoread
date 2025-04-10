#' to read one measurement from the 82z archive
#' 
#' 

oneobs_82z <- function(
    filepath,
    filename = "data.csv",
    meta_file = "metadata.json"
) {
    metadata <- metadata_82z(
        filepath = filepath,
        meta_file = meta_file
    )

    meta_df <- metadata |>
        filter(is.na("group"))

    meta_cols <- metadata |>
        filter(!is.na("group"))

    data <- data_82z(
        filepath = filepath,
        filename = filename
    )


}