library(tidyverse)
library(yaml)

# use readlines to create a list
file <- "raw_files/10-28-2011.81x"
# single_file <- "raw_files/test.81x"
# full_file <- readLines(file)
raw_lines <- read_lines_raw(file)
# use the empty line as a slicer
length <- lengths(raw_lines)
zero_lines <- which(length == 0)

all_obs <- read_lines(file)

start_vec <- c(0, (zero_lines[-length(zero_lines)] + 1))
end_vec <- zero_lines

# extractin the first batch of obs
# start <- 0
# end <- (zero_lines[1] - 1)
# one_obs <- all_obs[start:end]

# oneobs_81x(file, all_obs, start_vec[1], end_vec[1]) |> str()

# data_file <- tibble()

# for (i in 1:length(zero_lines)) {

#   data_file[i] <- oneobs_81x(file, all_obs, start_vec[i], end_vec[i])


# }
# data_file

# test <- tibble(
#     start_vec,
#     end_vec
# ) |>
# mutate(
#     data = map(all_obs, oneobs_81x, file = file, all_obs = all_obs, start = start_vec, end = end_vec)
# )

# map(all_obs, oneobs_81x, file = file, all_obs = all_obs, start = start_vec, end = end_vec)
# map2(start_vec, end_vec, oneobs_81x, start = start_vec, end = end_vec, file = file, all_obs = all_obs)

# oneobs_81x(start_vec[1], end_vec[1])
output <- map2(start_vec, end_vec, oneobs_81x)

class(output)
str(output)
View(output)
