test_that("licoread can read several 82z files", {

    path <- test_path("test82z/")

    file_list <- list.files(
    path,
    pattern = "*.82z$",
    full.names = TRUE,
    recursive = TRUE
  )

  test_read82z <- read_82z(
      file_list = file_list,
  data_file = "data.csv",
  meta_file = "metadata.json",
  regex_file = "(\\w*-)*\\w*(?=([.]82z$))"
    ) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
    
    test_licoread82z <- licoread(
        path
    ) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
  

  expect_equal(
    test_licoread82z,
  test_read82z
  )
})

test_that("licoread works with 81x", {
  expect_equal(nrow(licoread(test_path("test81x/"))), 25)
})

test_that("error when several file types with auto", {
    expect_error(
        licoread(test_path("mixed_files")),
        "More than one file types found, please provide it manually."
    )
})

test_that("licoread manual file_type 82z", {
    expect_snapshot(
        licoread(
            location = test_path("mixed_files"),
            file_type = "82z"
        )
    )
})

test_that("licoread manual file_type 81x", {
    expect_snapshot(
        licoread(
            location = test_path("mixed_files"),
            file_type = "81x"
        )
    )
})
