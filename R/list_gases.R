
list_gases <- function(
  df,
  file_type = "auto",
  file_type_list = c(
    "82z",
    "81x",
    "auto"
  )
  ) {
  file_type <- match.arg(file_type, file_type_list)

  if (file_type == "auto") {
    file_type <- attr(df, "file_type")
  }

  if (file_type == "82z") {

    message("File type is 82z.")

    output <- list_gases_82z(df)
  }

  if (file_type == "81x") {
    stop("81x file type is not supported.")
  }

  output

}

list_gases_82z <- function(
  df
  ) {
    output <- df |>
    unnest("data") |>
    unnest("gas_f_conc")

  gases <- output |>
    select("gas") |>
    distinct() |>
    pull(.data$gas)

    gases
}
