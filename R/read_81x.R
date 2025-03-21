
# use readlines to create a list
file <- "raw_files/10-28-2011.81x"
# full_file <- readLines(file)
full_file <- read_lines_raw(file)
# use the empty line as a slicer
# lapply(full_file, length)
length <- lengths(full_file)
zero_lines <- which(length == 0)
# create new cols with the elements from yamal and footer