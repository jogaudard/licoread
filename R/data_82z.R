#' to read the raw data
#' 
#' 

data_82z <- function(
    filepath,
    filename = "data.csv"){



data_name1 <- unz(filepath, filename) |>
    read_csv(n_max = 1, col_names = FALSE)

data_name1 <- as.character(data_name1[1,])

data_name2 <- unz(filepath, filename) |>
    read_csv(skip = 1, n_max = 1, col_names = FALSE)

data_name2 <- as.character(data_name2[1,])

data_name <- tibble(
    data_name1,
    data_name2
) |>
mutate(
    names = paste(data_name1, data_name2, sep = "_")
) |>
pull(names) |>
as.character()

data_data <- unz(filepath, filename) |>
    read_csv(skip = 3, col_names = data_name)

data_data
}