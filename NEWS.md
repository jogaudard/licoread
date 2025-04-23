# licoread 0.1.1

* `licoread_to_fluxible`:
  * issue with leading zeros in time columns fixed
  * `datetime_col`: arguments in documentation was in wrong order. Should be `c("date", "time")`
* `licoread`: option `glimpse = n` will randomly select n files from the target folder. This allows for testing without importing a long list of files (which takes time).

# licoread 0.1.0

* `licoread_to_fluxible`: creates a df that is easy to use with the fluxible R package.

# licoread 0.0.2

* `licoread`: function to read all Li-COR raw files in 82z or 81x format in a given location and return a tibble without losing any data or units.
* functions `read_82z` and `read_81x` removed as they got integrated in `licoread`

# licoread 0.0.1

* `read_82z`: function to read several .82z files in a given location (including in location subfolders).
* `read_81x`: function to read several observation in one .81x file.