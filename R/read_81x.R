
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
line_max <- max(data_loc) # skipping everything after the last row of data

obs_data <- read_tsv(single_file, skip = line_skip, n_max = line_max)
str(obs_data)

# now to read meta data

metadata <- read_yaml(text = obs[-data_loc]) |>
compact()
str(metadata)
enframe(metadata) |>
unnest(value)

# compact(metadata)

table_meta <- stack(metadata) |>
pivot_wider(names_from = ind, values_from = values)

# as_tibble(metadata)
# table_meta <- map_dfr(metadata, ~ .x)
table_meta <- enframe(metadata) |>
pivot_wider(names_from = name, values_from = value) |>
unnest(names(table_meta)) |>
replace("NULL", NA)


View(table_meta)
str(table_meta)

