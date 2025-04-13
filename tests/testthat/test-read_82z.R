test_that("can one file", {
    expect_snapshot(
        oneobs_82z(
            path = test_path("test82z/"),
            filename = "82m-0109-20240725000057.82z"
        ) |>
        str()
    )
  })