test_that("can read one file", {
    expect_snapshot(
        oneobs_82z(
            path = test_path("test82z/"),
            filename = "82m-0109-20240725000057.82z",
            data_file = "data.csv",
            meta_file = "metadata.json"
        ) |>
        str()
    )
  })

test_that("can read data", {
    expect_snapshot(
        data_82z(
    filepath = test_path("test82z/82m-0109-20240725000057.82z"),
    data_file = "data.csv"
  ) |>
        str()
    )
  })

  

  test_that("can read several files", {
    expect_snapshot(
        read_82z(
            path = test_path("test82z/")
        ) |>
        str()
    )
  })
