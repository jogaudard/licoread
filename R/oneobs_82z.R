#' to read one measurement from the 82z archive
#' @param filepath name and path to the 82z archive
#' @param filename name of the file with raw data
#' @param meta_file name of the file with meta data
#' @importFrom rlang .data

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
        filter(.data$name2 == "area")

    meta_cols <- metadata |>
        filter(!is.na("group"))

    data <- data_82z(
        filepath = filepath,
        filename = filename
    )


}