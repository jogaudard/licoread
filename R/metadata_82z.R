#' read meta data file inside 82z archive
#' @param filepath name and path to the 82z archive
#' @param meta_file name of the file with meta data
#' @importFrom jsonlite fromJSON
#' @importFrom tibble enframe
#' @importFrom dplyr mutate pull
#' @importFrom stringr str_extract str_remove str_split
#' @importFrom purrr map
#' @importFrom tidyr separate_wider_delim replace_na pivot_wider


metadata_82z <- function(
    filepath,
    meta_file
) {
    metadata_raw <- unz(filepath, meta_file) |>
        fromJSON() |>
        enframe(unlist()) |>
  mutate(
    # add an id col to group per gas
    group = str_extract(.data$name, "\\d$"),
    name = str_remove(.data$name, "\\d$")
  )

# nb of column to separate
rgx_split <- "\\."
n_cols_max <-
  metadata_raw |>
  pull(.data$name) |>
  str_split(rgx_split) |>
  map_dbl(~length(.)) |>
  max()

last_col <- paste0("name", n_cols_max)

nms_sep <- paste0("name", 1:n_cols_max)
metadata <- metadata_raw |>
  separate_wider_delim(.data$name, delim = rgx_split, names = nms_sep, names_repair = "unique", too_few = "align_start") |>
  mutate(
    {{last_col}} := replace_na({{last_col}}, "VALUE")
  ) |>
   pivot_wider(names_from = {{last_col}}, values_from = "value")

metadata

}