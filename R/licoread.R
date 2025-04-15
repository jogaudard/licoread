#' reads Li-COR files in a given location
#' @importFrom purrr map list_rbind
#' @importFrom stringr str_match
#' @importFrom stats na.omit

licoread <- function(
    location,
    file_type = "auto",
    file_type_list = c(
        "82z",
        "81x"
    ),
  data_file = "data.csv",
  meta_file = "metadata.json",
  regex_file = "(\\w*-)*\\w*(?=([.]82z$))"
) {
    file_list <- list.files(
    location,
    full.names = TRUE,
    recursive = TRUE
  )

    if (file_type == "auto") {

        file_type <- licoread_auto(file_list)
    }

    file_type <- match.arg(file_type, file_type_list)

    if (file_type == "82z") {

        file_list <- str_match(file_list, ".*[.]82z$") |>
            na.omit()

        obs_list <- file_list |>
    map(\(x) {
      oneobs_82z(
        filepath = x,
        data_file = data_file,
        meta_file = meta_file,
        regex_file = regex_file
      )
    },
    .progress = list(
      type = "iterator",
      format = "Importing files {cli::pb_bar} {cli::pb_percent}",
      clear = TRUE
    ))
    }

    if (file_type == "81x") {

        file_list <- str_match(file_list, ".*[.]81x$") |>
            na.omit()

        obs_list <- file_list |>
    map(\(x) {
      read_81x_onefile(
        file = x
      )
    },
    .progress = list(
      type = "iterator",
      format = "Importing files {cli::pb_bar} {cli::pb_percent}",
      clear = TRUE
    ))
    }

    output <- list_rbind(obs_list)

    output
}
