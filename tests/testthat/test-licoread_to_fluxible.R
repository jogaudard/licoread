test_that("licoread to fluxible works", {

gas_df_82z <- licoread(test_path("mixed_files"), file_type = "82z")
ch4_dry <- licoread_to_fluxible(gas_df_82z, "LI-7810_CH4_DRY") |>
    distinct(gas) |>
    pull()
  
  expect_equal(
    ch4_dry,
    "LI-7810_CH4_DRY"
  )
})
