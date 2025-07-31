#' imports data from li7500 setup
#' @description 
#' @param 
#' 
#' @importFrom purrr map_dfr


import7500 <- function(path,
                       version = "till2023",
                       plotinfo = TRUE) {

list_files <- list.files(
  path,
  full.names = TRUE,
  recursive = TRUE
)

if (version == "till2023") {
    output <- list_files |>
      map_dfr(import7500_old_oneobs)
}

if (version == "post2023") {
    output <- list_files |>
      map_dfr(import7500_new_oneobs)
}

if (isTRUE(plotinfo)) {
    plot_info <- output |>
      separate_wider_delim(filename,
        delim = "_",
        names = c(
          "location",
          "date",
          "time_of_day",
          "trial"
        )
      )
}

output
                       }