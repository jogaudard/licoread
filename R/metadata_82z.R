#' read meta data file inside 82z archive
#' 
#' 


metadata_82z <- function(
    filepath
) {
    metadata_raw <- unz(filepath, "metadata.json") |>
        fromJSON() |>
        enframe(unlist()) |>
  mutate(
    # add an id col to group per gas
    group = str_extract(name, "\\d$"),
    name = str_remove(name, "\\d$")
  )

# nb of column to separate
rgx_split <- "\\."
n_cols_max <-
  metadata_raw |>
  pull(name) |>
  str_split(rgx_split) |>
  map_dbl(~length(.)) |>
  max()

last_col <- paste0("name", n_cols_max)

nms_sep <- paste0("name", 1:n_cols_max)
metadata <-
  metadata_raw |>
  separate(name, into = nms_sep, sep = rgx_split, fill = "right") |>
  mutate(
    {{last_col}} := replace_na({{last_col}}, "VALUE")
  ) |>
    pivot_wider(names_from = {{last_col}}, values_from = "value")

}