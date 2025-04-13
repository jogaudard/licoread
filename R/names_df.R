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