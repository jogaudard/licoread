# reads Li-COR files in a given location

reads Li-COR files in a given location

## Usage

``` r
licoread(
  location,
  file_type = "auto",
  file_type_list = c("82z", "81x", "auto"),
  data_file = "data.csv",
  meta_file = "metadata.json",
  regex_file = "(\\w*-)*\\w*(?=([.]82z$))",
  sample = FALSE
)
```

## Arguments

- location:

  location of the files

- file_type:

  type of file (82z or 81x). If "auto" (default), the function will try
  to detect it by itself.

- file_type_list:

  list of file types

- data_file:

  name of the file with raw data

- meta_file:

  name of the file with meta data

- regex_file:

  regex expression matching the name of the 82z file. Here in case the
  user has a different than the default and for easier updates.

- sample:

  `sample = n` randomly selects n files to be imported. This allows for
  testing the setup before importing a potentially large list of files
  which will take time and be difficult to handle.

## Value

a tibble (nested or not depending on raw data) containing all the data
from the raw files present at the location provided

## Examples

``` r
path_82z <- system.file("extdata/82z", package = "licoread")
licoread(path_82z)
#> # A tibble: 2 × 38
#>   f_fluxid          data     units    `CHAMBER_AREA_cm+2` CHAMBER_COLLAR_HEIGH…¹
#>   <chr>             <list>   <list>                 <dbl>                  <dbl>
#> 1 82m-0109-2024072… <tibble> <tibble>                318.                      5
#> 2 82m-0109-2024072… <tibble> <tibble>                318.                      5
#> # ℹ abbreviated name: ¹​CHAMBER_COLLAR_HEIGHT_cm
#> # ℹ 33 more variables: CHAMBER_LATITUDE_degrees <dbl>,
#> #   CHAMBER_LONGITUDE_degrees <dbl>, CHAMBER_PARK_POSITION_degrees <dbl>,
#> #   CHAMBER_TUBE_LENGTH_cm <dbl>, `CHAMBER_VOLUME_cm+3` <dbl>,
#> #   `LI-7810_TUBE_LENGTH_cm` <dbl>, `LI-7810_VOLUME_cm+3` <dbl>,
#> #   `LI-7820_TUBE_LENGTH_cm` <dbl>, `LI-7820_VOLUME_cm+3` <dbl>,
#> #   `LI-7825_TUBE_LENGTH_cm` <dbl>, `LI-7825_VOLUME_cm+3` <dbl>, …
```
