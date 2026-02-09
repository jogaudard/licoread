# licoread

## Importing the data

``` r
library(licoread)
# this step is not needed if you know where your data are
path <- system.file("extdata/82z", package = "licoread")
# provide the location of your raw files to licoread
data <- licoread(path)

# if your location containes more than one file type, you will have to specify
# which files licoread should read
path <- system.file("extdata/mixed_files", package = "licoread")
gas_df_82z <- licoread(path, file_type = "82z")
```

## Making a fluxible-friendly dataframe

``` r
path_81x <- system.file("extdata/81x", package = "licoread")
gas_df_81x <- licoread(path_81x)

co2_df <- licoread_to_fluxible(
  gas_df_81x,
  "CO2",
  datetime_col = "Date"
)
#> File type is 81x.
#> Unnesting the data...
#> Formatting datetime column...
#> Looking for start and end of each measurement...
```

With the 82z file type, the name of measured gases is not so intuitive.
You can use the
[`list_gases()`](https://jogaudard.github.io/licoread/reference/list_gases.md)
function to list all the gases present in the dataset.

``` r

list_gases(gas_df_82z)
#> File type is 82z.
#> [1] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"

ch4_dry <- licoread_to_fluxible(
  gas_df_82z,
  "LI-7810_CH4_DRY",
  datetime_col = c("LI-8250_DATE", "LI-8250_TIME")
)
#> File type is 82z.
#> Unnesting the data...
#> Selecting the focus gas...
#> Formatting datetime column...
#> Looking for start and end of each measurement...
```

## Importing data from LI7500 tent setup

The function
[`licoread::import7500`](https://jogaudard.github.io/licoread/reference/import7500.md)
is tailored to import data files from the LI7500 tent setup described in
Halbritter *et al.* (2024). The `plotinfo` argument imports information
contained in the filename if there are separated by an underscore, for
example `[location]_[date]_[time of day]_[trial].txt`. The function is
recursive and will read all the files in the designated folder and its
subfolders. It is therefore necessary that the designated folder
contains only files to import that were all recorded with the same
setup.

The default settings import files from before the update of the LI7500.

``` r
# this step is not needed if you know where your data are
path_co2fluxtent <- system.file("extdata/co2fluxtent", package = "licoread")
data <- import7500(
  path_co2fluxtent,
  plotinfo = c("date", "location", "time_of_day", "trial")
)
```

To read files created after the update of the LI7500, set
`version = "post2023"`.

``` r
# this step is not needed if you know where your data are
path_pftc7 <- system.file("extdata/pftc7", package = "licoread")
data <- import7500(path_pftc7, version = "post2023")
```

In case a comment was written while creating the files (typically
inserted on the line above the column names), it is automatically added
in the column `comment`.

``` r
# this step is not needed if you know where your data are
path_pftc5 <- system.file("extdata/pftc5", package = "licoread")
data <- import7500(
  path_pftc5,
  plotinfo = c("site", "block", "date", "plot", "trial")
)
```

Halbritter, A.H., Vandvik, V., Cotner, S.H., Farfan-Rios, W., Maitner,
B.S., Michaletz, S.T., Oliveras Menor, I., *et al.* (2024), “[Plant
trait and vegetation data along a 1314 m elevation gradient with fire
history in Puna grasslands,
Perú](https://doi.org/10.1038/s41597-024-02980-3)”, *Scientific Data*,
Nature Publishing Group, Vol. 11 No. 1, p. 225.
