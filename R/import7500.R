#' imports data from li7500 setup
#' @description imports data from the li7500 setup described in
#' Halbritter et al (2024)
#' @references Halbritter, A.H., Vandvik, V., Cotner, S.H. et al.
#' Plant trait and vegetation data along a 1314 m elevation gradient with fire
#' history in Puna grasslands, Perú. Sci Data 11, 225 (2024).
#' https://doi.org/10.1038/s41597-024-02980-3
#' @param path location of the files. Note that the function is recursive and
#' will import all the files at the location
#' @param version `"till2023"` (default) refers to the setup before the li7500
#' update. For the update version, use `"post2023"`.
#' @param plotinfo `TRUE` (default), means that the file name contains
#' information about the measurement and that should be added in the output.
#' @param plotinfo_names character vector of column names to use when seperating
#' the plot info from the file name. Default is following the recommanded
#' file naming convention `[location]_[date]_[time of day]_[trial]`.
#' @return a dataframe with all data present in the files to import. New
#' datetime and filename columns contain respectively the datetime of
#' measurements and their orginial filename. If `comment = TRUE`, a column
#' comment will contain the comments. Measurement informations from the file
#' names are stored in new columns according to `plotinfo_names`.
#' @export
#' @importFrom purrr map list_rbind
#' @importFrom stringr str_remove
#' @importFrom rlang .data
#' @examples
#' path_pftc7 <- system.file("extdata/pftc7", package = "licoread")
#' import7500(path_pftc7, version = "post2023", plotinfo = FALSE)
#'
#' path_pftc5 <- system.file("extdata/pftc5", package = "licoread")
#' import7500(path_pftc5,
#' plotinfo_names = c("site", "block", "date", "plot", "trial"))
#'
#' path_co2fluxtent <- system.file("extdata/co2fluxtent",
#' package = "licoread")
#' import7500(path_co2fluxtent,
#' plotinfo_names = c("date", "location", "time_of_day", "trial"))


import7500 <- function(path,
                       version = "till2023",
                       plotinfo = TRUE,
                       plotinfo_names = c(
                         "location",
                         "date",
                         "time_of_day",
                         "trial"
                       )) {

  list_files <- list.files(
    path,
    full.names = TRUE,
    recursive = TRUE
  )

  if (version == "till2023") {
    output <- list_files |>
      map(import7500_old_oneobs, .progress = TRUE) |>
      list_rbind()
  }

  if (version == "post2023") {
    output <- list_files |>
      map(import7500_new_oneobs, .progress = TRUE) |>
      list_rbind()
  }

  if (isTRUE(plotinfo)) {
    output <- output |>
      mutate(
        filename_temp = str_remove(.data$filename, "\\.[^.]+$")
      ) |>
      separate_wider_delim(
        "filename_temp",
        delim = "_",
        names = plotinfo_names
      )
  }

  output

}
