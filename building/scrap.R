debug(licoread_auto)
debug(licoread)

licoread("local_stuff/20240725_sample_data_all_gases/")
gas_df_81x <- licoread("tests/testthat/mixed_files", file_type = "81x")
gas_df_82z <- licoread("tests/testthat/mixed_files", file_type = "82z")

str(gas_df_81x)
str(gas_df_82z)

debug(fluxible_82z)
View(ch4_dry)
ch4_dry <- fluxible_82z(gas_df_82z, "LI-7810_CH4_DRY")
ch4_dry |>
    distinct(gas) |>
    pull()
