library(tidyverse)
library(jsonlite)

filepath <- "local_stuff/20240725_sample_data_all_gases/82m-0109-20240725000057.82z/metadata.json"

metadata_file <- unz("local_stuff/20240725_sample_data_all_gases/82m-0109-20240725000057.82z", "metadata.json")

fromJSON(metadata_file)
