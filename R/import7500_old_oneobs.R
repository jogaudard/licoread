#' imports one file from li7500 (old)
#' 
#' 

import7500_old_oneobs <- function(filename) {

  col_names <- read_tsv(filename,
                        skip = 9,
                        n_max = 1,
                        col_names = FALSE) |>
    as.character()

  data <- read_tsv(filename,
                   skip = 10,
                   col_names = col_names) |>
    select(!"X1")



  datetime_txt <- read_lines(filename, n_max = 1) |>
    str_replace(" at ", " ") |>
    parse_date_time(orders = "b d Y H:M:S")

  comment_txt <- read_lines(filename,
                        n_max = 1,
                        skip = 8)

  oneobs_df <- data |>
    mutate(
      datetime = datetime_txt,
      comment = comment_txt
    )

  oneobs_df
}
