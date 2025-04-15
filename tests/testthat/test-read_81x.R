test_that("can read file", {
  expect_equal(nrow(read_81x(test_path("10-28-2011.81x"))), 25)
})
