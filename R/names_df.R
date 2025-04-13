#' to get a vector of names of a df, matching a regex
#' @param df the df to get the names from
#' @param regname the regex expression to match
#' @importFrom stringr str_extract

names_df <- function(
  df,
  regname = "name\\d"
) {
  names_df <- names(df) |>
    str_extract(regname) |>
    na.omit() |>
    as.character()

  names_df
}
