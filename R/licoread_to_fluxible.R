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
# #' @importFrom 
# #' @examples 


licoread_to_fluxible <- function(
    df,
    focus_gas,
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

    output
}