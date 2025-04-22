test_that("licoread to fluxible works (snapshot)", {

  gas_df_82z <- licoread(test_path("mixed_files"), file_type = "82z")
  ch4_dry <- licoread_to_fluxible(
    gas_df_82z,
    "LI-7810_CH4_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
  )

  expect_snapshot(
    str(ch4_dry)
  )
})

test_that("licoread to fluxible works with 82z", {

  gas_df_82z <- licoread(test_path("mixed_files"), file_type = "82z")
  ch4_dry <- licoread_to_fluxible(
    gas_df_82z,
    "LI-7810_CH4_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
  ) |>
    distinct(gas) |>
    pull()

  expect_equal(
    ch4_dry,
    "LI-7810_CH4_DRY"
  )
})

test_that("licoread to fluxible works with 81x", {

  gas_df_81x <- licoread(test_path("mixed_files"), file_type = "81x")
  co2_df <- licoread_to_fluxible(
    gas_df_81x,
    "CO2",
    datetime_col = "Date"
  )

  expect_snapshot(
    str(co2_df)
  )
})

test_that("leading zeros issues with 82z", {

  gas_df_82z <- licoread(test_path("lead_zero_prob"), file_type = "82z")
  co2_df <- licoread_to_fluxible(
    gas_df_82z,
    "LI-870_CO2_DRY",
    datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
  ) |>
    select(f_fluxid, f_datetime, f_conc, f_end, f_start)

  expect_snapshot(
    co2_df
  )
})
