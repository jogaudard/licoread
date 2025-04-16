#' selects the focus gas and makes a df to use in \link[fluxible]{fluxible}
#' @description selects the focus gas and checks the columns needed for the
#' \link[fluxible]{fluxible} workflow
#' @param df input dataframe from \link[licoread:licoread]{licoread}
#' @param focus_gas gas to select
#' @param file_type type of file (82z or 81x). If "auto" (default), the
#' function will try to detect it by itself.
#' @param file_type_list list of file types
#' @return an unnested df with only the selected gas
#' @export
#' @importFrom dplyr rename all_of mutate select everything
#' @importFrom lubridate ymd_hms
# #' @examples 


licoread_to_fluxible <- function(
    df,
    focus_gas,
    datetime_col,
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
        output <- fluxible_82z(
            df,
            focus_gas = focus_gas
        )
    }

    # need to rename datetime and f_fluxid column
    if (length(datetime_col) == 1) {
        output <- rename(
            f_datetime = all_of("datetime_col")
        ) |>
        mutate(
            f_datetime = ymd_hms(f_datetime)
        )
        
    }

    if (length(datetime_col) == 2) {

        f_date <- datetime_col[1]
        f_time <- datetime_col[2]

        output <- output |>
            rename(
            f_date = f_date,
            f_time = f_time
        ) |>
        mutate(
            f_datetime = ymd_hms(paste(f_date, f_time))
        ) |>
        select(!c("f_date", "f_time"))
    }
    
    # flux_fitting also needs f_start and f_end

    # rearrange cols order to have the useful stuff first

    # output <- output |>
    #     select("f_f_fluxid", "f_datetime", focus_gas, "f_start", "f_end", everything())

    output
}