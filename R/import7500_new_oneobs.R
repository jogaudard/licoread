#' imports one file from li7500 (old)
#' @param filepath path to the file
#' @return a df with the content of the file
#' @importFrom readr read_tsv read_lines locale
#' @importFrom dplyr select mutate
#' @importFrom stringr str_remove_all
#' @importFrom lubridate round_date as_datetime

import7500_new_oneobs <- function(filepath,
                                  comment,
                                  skip) {

  if (isTRUE(comment)) {
    skip <- skip + 1
  }

  data <- read_tsv(filepath,
                   skip = skip,
                   locale = locale(encoding = "latin1"),
                   id = "filename",
                   show_col_types = FALSE,
                   name_repair = "unique_quiet")

  oneobs_df <- data |>
    mutate(
      Time = str_remove_all(.data$Time, ":\\d{3}$"),
      datetime = as_datetime(paste(.data$Date, .data$Time)),
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
