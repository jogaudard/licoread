#' makes df from 81x files compatible with fluxible
#' @param df input dataframe from \link[licoread:licoread]{licoread}
#' @param focus_gas gas to select
#' @param id_cols columns to identify unique fluxes
#' @param datetime_col column containing datetime information
#' @return a df with the focus gas column renamed as "f_conc" and f_fluxid in
#' chronological order of datetime
#' @importFrom tidyr unnest
#' @importFrom dplyr rename all_of arrange mutate cur_group_id

fluxible_81x <- function(
  df,
  focus_gas,
  id_cols,
  datetime_col
) {

  message("Unnesting the data...")

  output <- df |>
    unnest("data") |>
    rename(
      f_conc = all_of(focus_gas)
    )

  # adding f_fluxid
  output <- output |>
    arrange({{datetime_col}}) |>
    mutate(
      .by = all_of(id_cols),
      f_fluxid = cur_group_id()
    )

  output

}
