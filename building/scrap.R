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

gas_df_82z <- licoread("tests/testthat/test82z", file_type = "82z", glimpse = 5)
