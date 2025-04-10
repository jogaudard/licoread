test_that("can one file", {
    expect_snapshot(
        oneobs_82z(
            filepath = test_path("82m-0109-20240725000057.82z")
        ) |>
        str()
    )
  })