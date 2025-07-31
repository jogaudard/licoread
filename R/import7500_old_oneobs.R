#' imports one file from li7500 (old)
#' @param filepath path to the file
#' @return a df with the content of the file
#' @importFrom readr read_tsv read_lines locale
#' @importFrom dplyr select mutate
#' @importFrom stringr str_replace
#' @importFrom lubridate parse_date_time round_date

import7500_old_oneobs <- function(filepath,
                                  comment,
                                  skip) {

  if (isTRUE(comment)) {
    skip <- 9
  }

  data <- read_tsv(filepath,
                   skip = skip,
                   locale = locale(encoding = "latin1"),
                   id = "filename",
                   show_col_types = FALSE,
                   name_repair = "unique_quiet") |>
    select(!"...1")

  datetime_txt <- read_lines(filepath, n_max = 1) |>
    str_replace(" at ", " ") |>
    parse_date_time(orders = "b d Y H:M:S")


  oneobs_df <- data |>
    mutate(
      datetime = datetime_txt + .data$`Relative Time`,
      datetime = round_date(.data$datetime),
      filename = basename(.data$filename) # removing folder names
    )

  if (isTRUE(comment)) {
    comment_txt <- read_lines(
      filepath,
      n_max = 1,
      skip = (skip - 1)
    )

    oneobs_df <- oneobs_df |>
      mutate(
        comment = comment_txt
      )
  }

  oneobs_df
}
