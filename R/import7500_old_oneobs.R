#' imports one file from li7500 (old)
#' @param filepath path to the file
#' @return a df with the content of the file
#' @importFrom readr read_tsv read_lines locale
#' @importFrom dplyr select mutate
#' @importFrom stringr str_replace str_trim
#' @importFrom lubridate parse_date_time round_date
#' @importFrom rlang .data

import7500_old_oneobs <- function(filepath) {


  raw_lines <- readLines(filepath, n = 11)

  header_line_index <- which(str_detect(raw_lines, "^\\t"))[1]

  if (is.na(header_line_index)) {
    stop("No line starting with a tab character found (headers).")
  }

  comment_txt <- NA_character_
  if (header_line_index > 1) {
    prev_line <- str_trim(raw_lines[header_line_index - 1])

    # If the previous line does NOT match known metadata patterns,
    # treat it as a comment
    is_not_comment <- str_detect(prev_line, regex(
      "^((Mar|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)
      \\d{1,2} \\d{4})|^Frequency:|^CO2$|^H2O$|^Zero:|^Span:",
      ignore_case = TRUE
    ))

    if (!is_not_comment && prev_line != "") {
      comment_txt <- prev_line
    }
  }

  data <- read_tsv(filepath,
                   skip = header_line_index - 1,
                   locale = locale(encoding = "latin1"),
                   id = "filename",
                   show_col_types = FALSE,
                   name_repair = "unique_quiet",
                   progress = FALSE) |>
    select(!"...1")

  datetime_txt <- read_lines(filepath, n_max = 1, progress = FALSE) |>
    str_replace(" at ", " ") |>
    parse_date_time(orders = "b d Y H:M:S")


  oneobs_df <- data |>
    mutate(
      datetime = datetime_txt + .data$`Relative Time`,
      datetime = round_date(.data$datetime),
      filename = basename(.data$filename), # removing folder names
      comment = comment_txt
    )

  oneobs_df
}
