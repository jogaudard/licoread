#' makes df from 82z files compatible with fluxible
#' @param df input dataframe from \link[licoread:licoread]{licoread}
#' @param focus_gas gas to select
#' @return an unnested df with only the selected gas
#' @importFrom tidyr unnest
#' @importFrom dplyr distinct pull rename
#' @importFrom rlang .data

fluxible_82z <- function(
  df,
  focus_gas
) {

  message("Unnesting the data...")

  output <- df |>
    unnest("data") |>
    unnest("gas_f_conc")


  message("Selecting the focus gas...")

  gases <- output |>
    select("gas") |>
    distinct() |>
    pull(.data$gas)

  focus_gas <- match.arg(focus_gas, gases)

  output <- output |>
    filter(.data$gas == focus_gas)


  output

}
