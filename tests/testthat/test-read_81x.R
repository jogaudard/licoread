test_that("can read file", {
  expect_equal(nrow(read_81x_onefile(test_path("10-28-2011.81x"))), 25)
})

test_that("can read several files", {

  location <- test_path("test81x/")

file_list <- list.files(
    location,
    pattern = "*.81x$",
    full.names = TRUE,
    recursive = TRUE
  )

  expect_equal(nrow(read_81x(file_list)), 25)
})
