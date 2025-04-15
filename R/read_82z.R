#' to read several 82z files
#' @param path location of the 82z files
#' @importFrom purrr map list_rbind

read_82z <- function(
    path,
    data_file = "data.csv",
    meta_file = "metadata.json",
    regex_file = "(\\w*-)*\\w*(?=([.]82z$))"
) {
  list <- list.files(path, pattern = "*.82z$", full.names = TRUE)

  list <- list |>
    map(\(x) {
    oneobs_82z(
        # path = path,
        # filename = x,
        filepath = x,
        data_file = data_file,
        meta_file = meta_file,
        regex_file = regex_file
        ) },
        .progress = list(
  type = "iterator", 
  format = "Importing files {cli::pb_bar} {cli::pb_percent}",
  clear = TRUE))

  output <- list_rbind(list)
  
  output
}
