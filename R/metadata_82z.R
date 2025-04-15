#' read meta data file inside 82z archive
#' @param filepath name and path to the 82z archive
#' @param meta_file name of the file with meta data
#' @return a tibble with the metadata from one observation
#' @importFrom jsonlite fromJSON
#' @importFrom tibble enframe
#' @importFrom dplyr mutate pull
#' @importFrom stringr str_extract str_remove str_split regex
#' @importFrom purrr map_dbl
#' @importFrom tidyr separate_wider_delim replace_na pivot_wider
#' @importFrom rlang :=


metadata_82z <- function(
  filepath,
  meta_file
) {

  metadata_raw <- unz(filepath, meta_file) |>
    fromJSON()

  metadata_raw <- enframe(unlist(metadata_raw)) |>
    mutate(
      # add an id col to group per gas
      group = str_extract(.data$name, "\\d$"),
      name = str_remove(.data$name, "\\d$")
    )

  # nb of column to separate
  rgx_split <- "\\."
  n_cols_max <-
    metadata_raw |>
    pull("name") |>
    str_split(rgx_split) |>
    map_dbl(~length(.)) |>
    max()

  last_col <- paste0("name", n_cols_max)

  nms_sep <- paste0("name", 1:n_cols_max)
  metadata <- metadata_raw |>
    separate_wider_delim("name",
      delim = regex(rgx_split),
      names = nms_sep,
      names_repair = "unique", too_few = "align_start"
    ) |>
    mutate(
      {{last_col}} := replace_na(.data[[last_col]], "SPEC")
    ) |>
    pivot_wider(names_from = {{last_col}}, values_from = "value") |>
    mutate(
      VALUE = as.numeric(.data$VALUE)
    )

  metadata

}
