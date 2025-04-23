#' selects the focus gas and makes a df to use in \link[fluxible]{fluxible}
#' @description selects the focus gas and checks the columns needed for the
#' \link[fluxible]{fluxible} workflow
#' @param df input dataframe from \link[licoread:licoread]{licoread}
#' @param focus_gas gas to select
#' @param file_type type of file (82z or 81x). If "auto" (default), the
#' function will try to detect it by itself.
#' @param file_type_list list of file types
#' @param datetime_col column containing datetime information if date and time
#' are in two different columns, provide a character vector of the form
#' c("date", "time")
#' @param id_cols columns to identify unique fluxes
#' @return an unnested df with only the selected gas
#' @export
#' @importFrom dplyr rename all_of mutate select everything
#' @importFrom lubridate ymd_hms
#' @importFrom rlang .data
#' @importFrom stringr str_pad
#' @examples
#' path_82z <- system.file("extdata/82z", package = "licoread")
#' gas_df_82z <- licoread(path_82z)
#' licoread_to_fluxible(gas_df_82z, "LI-7810_CH4_DRY",
#' datetime_col = c("LI-8250_DATE", "LI-8250_TIME"))


licoread_to_fluxible <- function(
  df,
  focus_gas,
  datetime_col,
  id_cols = c("File Name", "Obs#"),
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

    output <- fluxible_82z(
      df,
      focus_gas = focus_gas
    )
  }

  if (file_type == "81x") {

    message("File type is 81x.")

    output <- fluxible_81x(
      df,
      focus_gas = focus_gas,
      id_cols = id_cols,
      datetime_col = datetime_col
    )
  }

  # need to rename datetime and f_fluxid column

  message("Formatting datetime column...")

  if (length(datetime_col) == 1) {
    output <- output |>
      rename(
        f_datetime = all_of(datetime_col)
      ) |>
      mutate(
        f_datetime = ymd_hms(.data$f_datetime)
      )
  }

  if (length(datetime_col) == 2) {

    f_date <- datetime_col[1]
    f_time <- datetime_col[2]

    output <- output |>
      rename(
        f_date = all_of(f_date),
        f_time = all_of(f_time)
      ) |>
      mutate(
        f_time = str_pad(
          .data$f_time,
          6,
          side = "left",
          "0"
        ),
        f_datetime = ymd_hms(paste(f_date, f_time))
      ) |>
      select(!c("f_date", "f_time"))
  }

  # flux_fitting also needs f_start and f_end

  message("Looking for start and end of each measurement...")

  output <- output |>
    mutate(
      .by = "f_fluxid",
      f_start = min(.data$f_datetime),
      f_end = max(.data$f_datetime)
    )

  # rearrange cols order to have the useful stuff first

  output <- output |>
    select(
      "f_fluxid", "f_datetime", "f_conc", "f_start", "f_end", everything()
    )

  output
}
