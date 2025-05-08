#' lists gases present in the dataset
#' @description prints a character vector of the gases present in the dataset.
#' This is to be used to obtain the exact names of the gases before using
#' \link[licoread:licoread_to_fluxible]{licoread_to_fluxible}.
#' @param df the dataframe as imported with \link[licoread:licoread]{licoread}
#' @param file_type type of file (currently works only for 82z). If "auto"
#' (default), the function will try to detect it by itself.
#' @param file_type_list list of file types
#' @return a character vector of the gases present in the dataset
#' @importFrom tidyr unnest
#' @importFrom dplyr select distinct pull
#' @importFrom rlang .data
#' @export
#' @examples
#' path_82z <- system.file("extdata/82z", package = "licoread")
#' gas_df_82z <- licoread(path_82z)
#' list_gases(gas_df_82z)

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
