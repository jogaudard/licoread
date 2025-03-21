
# use readlines to create a list
file <- "raw_files/10-28-2011.81x"
single_file <- "raw_files/test.81x"
# full_file <- readLines(file)
full_file <- read_lines_raw(file)
# use the empty line as a slicer
# lapply(full_file, length)
length <- lengths(full_file)
zero_lines <- which(length == 0)


# read just one observation

obs <- read_lines(single_file)
# read_yaml("raw_files/header.81x")
# create new cols with the elements from yamal and footer

first_el <- substr(obs, start = 1, stop = 1)

meta_loc <- as.numeric(first_el) |>
is.na() |>
which()

# asnum <- as.numeric(first_el) #dirty
data_loc <- which(!is.na(as.numeric(first_el))) # location of data row are where as.numeric did not produce NA
col_names <- min(data_loc) - 1 # row with col names  is just before the first numeric row
data_loc <- append(data_loc, col_names, 0) # we add its row number to the location of data
line_skip <- min(data_loc) - 1 # we want to skip everything before the colnames
line_max <- max(data_loc) - line_skip - 1 # skipping everything after the last row of data

obs_data_old <- read_tsv(single_file, skip = line_skip, n_max = line_max)
str(obs_data_old)
View(obs_data_old)

# the problem with usine the list of lines is that if a cell is empty, it gets skipped and it messes up everything that follows
obs_data_lines <- obs[data_loc]
obs_data_names <- str_split_1(obs_data_lines[1], pattern = "\t")

obs_data <- tibble(lines = obs_data_lines[-1]) |>
separate_wider_delim(cols = lines, delim = "\t", names = obs_data_names, too_few = "debug") |>
select(-lines)
str(obs_data)
View(obs_data)
diffdf(obs_data, obs_data_old)
# enframe(obs[data_loc])
# as_tibble(obs[data_loc])

# now to read meta data

metadata <- read_yaml(text = obs[-data_loc])
# compact()
# str(metadata)
# enframe(metadata) |>
# unnest(value)

# compact(metadata)

# table_meta <- stack(metadata) |>
# pivot_wider(names_from = ind, values_from = values)

# as_tibble(metadata)
# table_meta <- map_dfr(metadata, ~ .x)
table_meta <- enframe(metadata) |> # make a df out of the list
pivot_wider(names_from = name, values_from = value) |> # each element of the list is now a column
unnest(names(metadata))
# replace("NULL", NA)
# some time column are treated as character "00:30", but we can treat them at the end with default col names

View(table_meta)
str(table_meta)

# creating a nested tibble

one_obs <- tibble(
    data = obs_data,
    table_meta
)

one_obs <- bind_cols(table_meta, obs_data) |>
nest(data = names(obs_data))

str(one_obs)
View(one_obs)


# all at once? without map or loop?


