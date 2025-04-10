library(tidyverse)
library(jsonlite)
library(measurements)

filepath <- "local_stuff/20240725_sample_data_all_gases/82m-0109-20240725000057.82z"

metadata_file <- unz(filepath, "metadata.json")

metadata <- fromJSON(metadata_file)

# as_tibble(metadata$FLUX)
# str(metadata)

# parse_json(metadata_file)
# we are getting somewhere with that one

metadata_raw <- enframe(unlist(metadata)) |>
  mutate(
    # add an id col to group per gas
    group = str_extract(name, "\\d$"),
    name = str_remove(name, "\\d$")
  )

# https://www.r-bloggers.com/2018/10/converting-nested-json-to-a-tidy-data-frame-with-r/
rgx_split <- "\\." # this step to get the number of cols needed, will have to be automated
n_cols_max <-
  metadata_raw %>%
  pull(name) %>% 
  str_split(rgx_split) %>% 
  map_dbl(~length(.)) %>% 
  max()
n_cols_max

nms_sep <- paste0("name", 1:n_cols_max)
metadata_sep <-
  metadata_raw %>% 
  separate(name, into = nms_sep, sep = rgx_split, fill = "right") |>
  mutate(
    name3 = replace_na(name3, "VALUE")
  ) |>
    pivot_wider(names_from = "name3", values_from = "value")
View(metadata_sep)

# metadata_sep |>
# select(name3) |>
# distinct()

# now we should convert the values in the units we want for Fluxible
# that is a problem for later
# metadata_conv <- metadata_sep |>
#     mutate(
#         unit_from = str_remove(UNITS, "\\W"),
#         dimension = str_extract(UNITS, "\\d$"),
#         VALUE = case_when(
#         dimension == 2 ~ conv_unit(VALUE, unit_from, "m2"),
#         dimension == 3 ~ conv_unit(VALUE, unit_from, "l")
#         )
#     )
# metadata_conv

data_file <- paste0(filepath, "/data.csv")

data_file <- unz(filepath, "data.csv")

data_name1 <- unz(filepath, "data.csv") |>
    read_csv(n_max = 1, col_names = FALSE)

data_name1 <- as.character(data_name1[1,])

data_name2 <- unz(filepath, "data.csv") |>
    read_csv(skip = 1, n_max = 1, col_names = FALSE)

data_name2 <- as.character(data_name2[1,])

data_name <- tibble(
    data_name1,
    data_name2
) |>
mutate(
    names = paste(data_name1, data_name2, sep = "_")
) |>
pull(names) |>
as.character()

data_data <- unz(filepath, "data.csv") |>
    read_csv(skip = 3, col_names = data_name)

debug(oneobs_82z)
debug(metadata_82z)

oneobs_82z("local_stuff/20240725_sample_data_all_gases/82m-0109-20240725000057.82z")
