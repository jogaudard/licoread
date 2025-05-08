test_that("list gases for 82z files", {

  df_82z <- licoread(test_path("test82z/"))

  expect_snapshot(
    list_gases(df_82z)
  )
})
