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


  test_that("can read several files", {
    expect_snapshot(
        read_82z(
            path = test_path("test82z/")
        ) |>
        str()
    )
  })

  test_that("can read several files in subfolders", {

    subfolders_reading <- read_82z(
        path = test_path("sub_82z/")
    )

    onefolder_reading <- read_82z(
            path = test_path("test82z/")
        )

    expect_equal(
        subfolders_reading,
        onefolder_reading
    )
  })
