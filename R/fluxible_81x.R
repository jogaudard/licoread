#' makes df from 81x files compatible with fluxible
#' 
#' 

fluxible_81x <- function(
    df,
    focus_gas
) {
    output <- df |>
        unnest("data") |>
        rename(
            f_conc = all_of(focus_gas)
        )
    
    output

}