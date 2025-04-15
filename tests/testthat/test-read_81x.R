test_that("can read file", {
  expect_equal(nrow(read_81x_onefile(test_path("10-28-2011.81x"))), 25)
})

test_that("can read several files", {
  expect_equal(nrow(read_81x(test_path("test81x/"))), 25)
})
