#' imports one file from li7500 (old)
#' @param filepath path to the file
#' @return a df with the content of the file
#' @importFrom readr read_tsv read_lines locale
#' @importFrom dplyr select mutate
#' @importFrom stringr str_replace
#' @importFrom lubridate parse_date_time round_date

import7500_old_oneobs <- function(filepath) {



  data <- read_tsv(filepath,
                   skip = 9,
                   locale = locale(encoding = "latin1"),
                   id = "filename") |>
    select(!"...1")

  datetime_txt <- read_lines(filepath, n_max = 1) |>
    str_replace(" at ", " ") |>
    parse_date_time(orders = "b d Y H:M:S")

  comment_txt <- read_lines(filepath,
                        n_max = 1,
                        skip = 8)

  oneobs_df <- data |>
    mutate(
      datetime = datetime_txt + .data$`Relative Time`,
      datetime = round_date(datetime),
      comment = comment_txt,
      filename = basename(filename) # removing folder names
    )

  oneobs_df
}
