#' gives a unique id to fluxes
#' 
#' 


flux_id <- function(
    raw_conc,
    id_cols = c("Obs#", "File Name"),
    datetime_col = "Date",
    etime_col = "Etime",
    vol_tot_col,
    area_col,
    obs_len = "Observation Length"
) {
    conc_df <- raw_conc |>
    unnest() |>
    mutate(
      .by = id_cols,
      f_fluxid = cur_group_id(),
      datetime = ymd_hms(datetime_col),
      obs_len = 
        )
}