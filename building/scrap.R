debug(licoread_auto)
debug(licoread)
debug(oneobs_81x)
debug(read_81x_onefile)

licoread("local_stuff/20240725_sample_data_all_gases/")
gas_df_81x <- licoread("tests/testthat/mixed_files", file_type = "81x")
gas_df_82z <- licoread("tests/testthat/mixed_files", file_type = "82z")

str(gas_df_81x)
str(gas_df_82z)

debug(fluxible_82z)
ch4_dry <- fluxible_82z(gas_df_82z, "LI-7810_CH4_DRY")
View(ch4_dry)

debug(licoread_to_fluxible)
licoread_to_fluxible(
    gas_df_82z,
    "LI-7810_CH4_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
)

