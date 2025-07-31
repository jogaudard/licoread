test_that("works with co2fluxtent test files", {
  expect_snapshot(
    import7500(
      test_path("co2fluxtent/"),
      plotinfo_names = c(
        "date",
        "location",
        "time_of_day",
        "trial"
      )
    ) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
  )
})

test_that("works with pftc5 test files", {
  expect_snapshot(
    import7500(
      test_path("pftc5/"),
      comment = TRUE,
      plotinfo_names = c(
        "site",
        "block",
        "date",
        "plot",
        "trial"
      )
    ) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
  )
})

test_that("works with pftc7 test files", {
  expect_snapshot(
    import7500(
      test_path("pftc7/"),
      version = "post2023",
      plotinfo = FALSE
    ) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
  )
})
