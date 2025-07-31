#' imports data from li7500 setup
#' @description 
#' @param 
#' 
#' @importFrom purrr map_dfr
#' @importFrom stringr str_remove_all


import7500 <- function(path,
                       version = "till2023",
                       plotinfo = TRUE,
                       plotinfo_names = c(
                         "location",
                         "date",
                         "time_of_day",
                         "trial"
                       ),
                       comment = FALSE,
                       skip = 8) {

  list_files <- list.files(
    path,
    full.names = TRUE,
    recursive = TRUE
  )

  if (version == "till2023") {
    output <- list_files |>
      map_dfr(import7500_old_oneobs,
              comment = comment,
              skip = skip)
  }

  if (version == "post2023") {
    output <- list_files |>
      map_dfr(import7500_new_oneobs)
  }

  if (isTRUE(plotinfo)) {
    output <- output |>
      mutate(
        filename_temp = str_remove_all(.data$filename, "\\.[^.]+$")
      ) |>
      separate_wider_delim(
        "filename_temp",
        delim = "_",
        names = plotinfo_names
      )
  }

  output

}
