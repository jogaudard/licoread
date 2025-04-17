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

test_that("licoread to fluxible works", {

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
