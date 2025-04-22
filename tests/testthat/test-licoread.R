test_that("licoread can read several 82z files", {

  expect_snapshot(
    licoread(test_path("test82z/")) |>
      str(digits.d = 4, width = 100, strict.width = "cut")
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

test_that("licoread can read several files in subfolders", {

  subfolders_reading <- licoread(
    location = test_path("sub_82z/")
  )

  onefolder_reading <- licoread(
    location = test_path("test82z/")
  )

  expect_equal(
    subfolders_reading |>
      str(digits.d = 4, width = 100, strict.width = "cut"),
    onefolder_reading |>
      str(digits.d = 4, width = 100, strict.width = "cut")
  )
})

test_that("licoread 81x works correctly in data nest", {

  gas_df_81x <- licoread(
    test_path("mixed_files"), file_type = "81x"
  )

  test_df <- gas_df_81x |>
    dplyr::pull("data")

  nrow_test <- nrow(test_df[[2]])


  expect_equal(
    nrow_test,
    108
  )
})
