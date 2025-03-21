library(tidyverse)
library(yaml)

# use readlines to create a list
file <- "raw_files/10-28-2011.81x"
single_file <- "raw_files/test.81x"
# full_file <- readLines(file)
raw_lines <- read_lines_raw(file)
# use the empty line as a slicer
length <- lengths(raw_lines)
zero_lines <- which(length == 0)

all_obs <- read_lines(file)

one_obs <- all_obs[0:(zero_lines[1] - 1)]

