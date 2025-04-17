# usethis::use_cran_comments()


devtools::check_win_devel()
devtools::check(remote = TRUE, manual = TRUE)

devtools::spell_check()

usethis::use_version("minor") #(or ‘patch’ or ‘major’)
devtools::submit_cran()

