#' to read the raw data
#' @param filepath name and path to the 82z archive
#' @param data_file name of the file with raw data
#' @importFrom readr read_csv
#' @importFrom tibble tibble
#' @importFrom dplyr mutate pull

data_82z <- function(
    filepath,
    data_file){


data_name1 <- unz(filepath, data_file) |>
    read_csv(n_max = 1, col_names = FALSE, show_col_types = FALSE, progress = FALSE)

data_name1 <- as.character(data_name1[1,])

data_name2 <- unz(filepath, data_file) |>
    read_csv(skip = 1, n_max = 1, col_names = FALSE, show_col_types = FALSE, progress = FALSE)

data_name2 <- as.character(data_name2[1,])

data_name3 <- unz(filepath, data_file) |>
    read_csv(skip = 2, n_max = 1, col_names = FALSE, show_col_types = FALSE, progress = FALSE)

data_name3 <- as.character(data_name3[1,])

data_name <- tibble(
    data_name1,
    data_name2,
    data_name3
) |>
unite(names) |>
# mutate(
#     names = paste(data_name1, data_name2, sep = "_")
# ) |>
pull(names) |>
as.character()

# need to read units somewhere

data_data <- unz(filepath, data_file) |>
    read_csv(skip = 3, col_names = data_name, show_col_types = FALSE, progress = FALSE)

data_data
}