available::available("licoread")

package_path = "/home/jga051/Documents/01_PhD/06_projects/licoread"
usethis::create_package(path = package_path)

usethis::use_test(name = "read_81x")

# build the documentation
devtools::document()

# check the examples work
devtools::run_examples()

# check the tests work
devtools::test()


usethis::use_package("")

devtools::check()

lintr::lint_package()

devtools::load_all()

# to make the webpage
usethis::use_pkgdown()
pkgdown::build_site()
usethis::use_pkgdown_github_pages()

usethis::use_readme_rmd()
devtools::build_readme()

rcompendium::add_lifecycle_badge(lifecycle = "experimental", quiet = FALSE)
