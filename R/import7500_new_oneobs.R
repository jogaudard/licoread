#' imports one file from li7500 (old)
#' @param filepath path to the file
#' @return a df with the content of the file
#' @importFrom readr read_tsv read_lines locale
#' @importFrom dplyr select mutate
#' @importFrom stringr str_remove_all str_trim
#' @importFrom lubridate round_date as_datetime
#' @importFrom rlang .data

import7500_new_oneobs <- function(filepath) {



  raw_lines <- readLines(filepath, n = 11)

  header_line_index <- which(str_detect(raw_lines, "^DATAH"))[1]

  if (is.na(header_line_index)) {
    stop("No line starting with `DATAH` found (headers).")
  }

  comment_txt <- NA_character_
  if (header_line_index > 1) {
    prev_line <- str_trim(raw_lines[header_line_index - 1])

    # If the previous line does NOT match known metadata patterns,
    # treat it as a comment
    is_not_comment <- str_detect(prev_line, regex(
      "^Model:|^SN:|^Timestamp:",
      ignore_case = TRUE
    ))

    if (!is_not_comment && prev_line != "") {
      comment_txt <- prev_line
    }
  }

  data <- read_tsv(filepath,
                   skip = header_line_index - 1,
                   locale = locale(encoding = "latin1"),
                   id = "f_fluxid",
                   show_col_types = FALSE,
                   name_repair = "unique_quiet",
                   progress = FALSE)

  oneobs_df <- data |>
    mutate(
      Time = str_remove_all(.data$Time, ":\\d{3}$"),
      f_datetime = as_datetime(paste(.data$Date, .data$Time)),
      f_datetime = round_date(.data$f_datetime),
      f_fluxid = basename(.data$f_fluxid), # removing folder names
      comment = comment_txt
    )

  oneobs_df
}
