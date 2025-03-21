
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

asnum <- as.numeric(first_el)
data_loc <- which(!is.na(as.numeric(first_el)))
# col_names <- min(data_loc) - 1
# data_loc <- append(data_loc, col_names, 0)
line_skip <- min(data_loc) - 2 # because we also want to get the row with col names
line_max <- max(data_loc)

obs_data <- read_tsv(single_file, skip = line_skip, n_max = line_max)

# now to read meta data


obs[-meta_loc]

is.numeric(first_el[124])

header <- scan(single_file, what = character())
