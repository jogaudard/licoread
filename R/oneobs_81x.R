

oneobs_81x <- function(
    # file,
    # all_obs,
    start,
    end
) {
one_obs <- all_obs[start:end]

# location of meta and data and col names

first_el <- substr(one_obs, start = 1, stop = 1)

meta_loc <- as.numeric(first_el) |>
is.na() |>
which()

data_loc <- which(!is.na(as.numeric(first_el))) # location of data row are where as.numeric did not produce NA
col_names_loc <- min(data_loc) - 1 # row with col names  is just before the first numeric row
data_loc <- append(data_loc, col_names_loc, 0)

# read data
line_skip <- min(data_loc) - 2 + start # we want to skip everything before the colnames
line_max <- max(data_loc) - line_skip - 1 # skipping everything after the last row of data

# read tsv is longer, but much safer than re using the one_obs list (in case there are empty cells)
obs_data <- read_tsv(file, skip = line_skip, n_max = line_max)

# read meta data

metadata <- read_yaml(text = one_obs[-data_loc])

table_meta <- enframe(metadata) |> # make a df out of the list
pivot_wider(names_from = name, values_from = value) |> # each element of the list is now a column
unnest(names(metadata))

# one_obs_tbl <- tibble(
#     data = obs_data,
#     table_meta
# )

one_obs_tbl <- bind_cols(table_meta, obs_data) |>
nest(data = names(obs_data))

one_obs_tbl
}
