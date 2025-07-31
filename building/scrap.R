debug(licoread_auto)
debug(licoread)
debug(oneobs_81x)
debug(read_81x_onefile)

licoread("local_stuff/20240725_sample_data_all_gases/")
gas_df_81x <- licoread("tests/testthat/mixed_files", file_type = "81x")
gas_df_82z <- licoread("tests/testthat/mixed_files", file_type = "82z")
View(gas_df_81x)
str(gas_df_81x)

test <- gas_df_81x |>
    pull(data)

nrow(test[[2]])

View(test[[11]])

str(gas_df_82z)

debug(fluxible_81x)
fluxible_81x(gas_df_81x, "CO2") |>
    View()

debug(fluxible_82z)
ch4_dry <- fluxible_82z(gas_df_82z, "LI-7810_CH4_DRY")
View(ch4_dry)

debug(licoread_to_fluxible)
licoread_to_fluxible(
    gas_df_82z,
    "LI-7810_CH4_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
)

licoread_to_fluxible(
    gas_df_81x,
    "CO2",
    datetime_col = "Date"
) |>
View()

gas_df_82z <- licoread(test_path("lead_zero_prob"), file_type = "82z")
  co2_df <- licoread_to_fluxible(
    gas_df_82z,
    "LI-870_CO2_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
  )

gas_df_82z <- licoread("tests/testthat/test82z", file_type = "82z", sample = 5)

list_gases(gas_df_81x) |> View()

debug(import7500)
import7500("inst/extdata/li7500/old")

read_lines()

filename <- "inst/extdata/li7500/old/ACJ_B_15mar2018_plot1_a.txt"

read_tsv("inst/extdata/li7500/old/ACJ_B_15mar2018_plot1_a.txt",
skip = 9, n_max = 1, col_names = FALSE) |> as.character()

datetime_txt <- read_lines(filename, n_max = 1)

datetime_txt |>
    stringr::str_replace(" at ", " ") |>
    lubridate::parse_date_time(orders = "b d Y H:M:S")

debug(import7500_old_oneobs)
import7500_old_oneobs(filename) |> View()

import7500_new_oneobs(
  "tests/testthat/li7500/new/pftc7/1_2000_east_1_day_a-2023-12-14T105700.txt",
      comment = FALSE,
      skip = 3
  )
