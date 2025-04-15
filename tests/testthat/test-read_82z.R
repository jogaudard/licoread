test_that("can read one file", {
  expect_snapshot(
    oneobs_82z(
      filepath = test_path("test82z/82m-0109-20240725000057.82z"),
      data_file = "data.csv",
      meta_file = "metadata.json",
      regex_file = "(\\w*-)*\\w*(?=([.]82z$))"
    ) |>
      str()
  )
})
