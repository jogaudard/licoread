# imports data from li7500 setup

imports data from the li7500 setup described in Halbritter et al (2024)

## Usage

``` r
import7500(path, version = "till2023", plotinfo = FALSE)
```

## Arguments

- path:

  location of the files. Note that the function is recursive and will
  import all the files at the location

- version:

  `"till2023"` (default) refers to the setup before the li7500 update.
  For the update version, use `"post2023"`.

- plotinfo:

  character vector of names to use when separating the plot info from
  the file name. Names in the file name have to be separated with an
  underscore, ex: `[location]_[date]_[time of day]_[trial].txt`. `FALSE`
  (default) means no information will be fetched from the filename.

## Value

a dataframe with all data present in the files to import. New datetime
and fluxid columns contain respectively the datetime of measurements and
their original filename. If comments are present, a column will contain
the comments. Measurement informations from the file names are stored in
new columns according to `plotinfo`.

## References

Halbritter, A.H., Vandvik, V., Cotner, S.H. et al. Plant trait and
vegetation data along a 1314 m elevation gradient with fire history in
Puna grasslands, Perú. Sci Data 11, 225 (2024).
https://doi.org/10.1038/s41597-024-02980-3

## Examples

``` r
path_pftc7 <- system.file("extdata/pftc7", package = "licoread")
import7500(path_pftc7, version = "post2023")
#> # A tibble: 330 × 42
#>    f_fluxid            DATAH Time  Date       `Sequence Number` `CO2 (mmol/m^3)`
#>    <chr>               <chr> <chr> <date>                 <dbl>            <dbl>
#>  1 1_2000_east_1_day_… DATA  10:5… 2023-12-14            123540             13.6
#>  2 1_2000_east_1_day_… DATA  10:5… 2023-12-14            123840             13.3
#>  3 1_2000_east_1_day_… DATA  10:5… 2023-12-14            124140             13.2
#>  4 1_2000_east_1_day_… DATA  10:5… 2023-12-14            124440             13.7
#>  5 1_2000_east_1_day_… DATA  10:5… 2023-12-14            124740             13.4
#>  6 1_2000_east_1_day_… DATA  10:5… 2023-12-14            125040             13.1
#>  7 1_2000_east_1_day_… DATA  10:5… 2023-12-14            125340             13.4
#>  8 1_2000_east_1_day_… DATA  10:5… 2023-12-14            125640             13.3
#>  9 1_2000_east_1_day_… DATA  10:5… 2023-12-14            125940             13.2
#> 10 1_2000_east_1_day_… DATA  10:5… 2023-12-14            126240             13.3
#> # ℹ 320 more rows
#> # ℹ 36 more variables: `CO2 (mg/m^3)` <dbl>, `CO2 Absorptance` <dbl>,
#> #   `CO2 (umol/mol)` <dbl>, `H2O (mmol/m^3)` <dbl>, `H2O (g/m^3)` <dbl>,
#> #   `H2O Absorptance` <dbl>, `H2O (mmol/mol)` <dbl>, `Dew Point (C)` <dbl>,
#> #   `Temperature (C)` <dbl>, `Pressure (kPa)` <dbl>, `Diagnostic Value` <dbl>,
#> #   `Diagnostic Value 2` <dbl>, `Diagnostic Word` <dbl>, `DSI Vin (v)` <dbl>,
#> #   `Cooler Voltage (v)` <dbl>, `Chopper Cooler Voltage (v)` <dbl>, …

path_pftc5 <- system.file("extdata/pftc5", package = "licoread")
import7500(path_pftc5,
plotinfo = c("site", "treatment", "date", "plot", "trial"))
#> # A tibble: 251 × 25
#>    f_fluxid   `Relative Time` Temperature Pressure `Aux Input` `CO2 Absorptance`
#>    <chr>                <dbl>       <dbl>    <dbl>       <dbl>             <dbl>
#>  1 ACJ_B_15m…            0.88        20.9     67.9           0            0.0638
#>  2 ACJ_B_15m…            1.94        20.9     67.9           0            0.0637
#>  3 ACJ_B_15m…            2.88        20.9     67.9           0            0.0633
#>  4 ACJ_B_15m…            3.94        20.9     67.9           0            0.063 
#>  5 ACJ_B_15m…            4.86        20.9     67.9           0            0.063 
#>  6 ACJ_B_15m…            5.88        20.9     67.9           0            0.063 
#>  7 ACJ_B_15m…            6.86        20.9     67.9           0            0.0632
#>  8 ACJ_B_15m…            7.88        20.9     67.9           0            0.0625
#>  9 ACJ_B_15m…            8.86        20.9     67.9           0            0.063 
#> 10 ACJ_B_15m…            9.88        20.9     67.9           0            0.063 
#> # ℹ 241 more rows
#> # ℹ 19 more variables: `CO2 mmol/m3` <dbl>, `CO2 mg/m3` <dbl>,
#> #   `CO2 umol/mol` <dbl>, `H2O Absorptance` <dbl>, `H2O mmol/m3` <dbl>,
#> #   `H2O g/m3` <dbl>, `H2O mmol/mol` <dbl>, `H2O(°C)` <dbl>,
#> #   `Cooler Voltage` <dbl>, f_datetime <dttm>, comment <chr>, f_start <dttm>,
#> #   f_end <dttm>, pressure_atm <dbl>, site <chr>, treatment <chr>, date <chr>,
#> #   plot <chr>, trial <chr>

path_co2fluxtent <- system.file("extdata/co2fluxtent",
package = "licoread")
import7500(path_co2fluxtent,
plotinfo = c("date", "location", "time_of_day", "trial"))
#> # A tibble: 345 × 24
#>    f_fluxid   `Relative Time` Temperature Pressure `Aux Input` `CO2 Absorptance`
#>    <chr>                <dbl>       <dbl>    <dbl>       <dbl>             <dbl>
#>  1 06172020_…            0.91       -65.7     75.7           0            0.0752
#>  2 06172020_…            1.91       -65.7     75.7           0            0.0731
#>  3 06172020_…            2.91       -65.7     75.7           0            0.0737
#>  4 06172020_…            3.98       -65.7     75.7           0            0.0731
#>  5 06172020_…            4.91       -65.7     75.7           0            0.073 
#>  6 06172020_…            5.92       -66.2     75.7           0            0.0729
#>  7 06172020_…            6.91       -65.7     75.7           0            0.0733
#>  8 06172020_…            7.92       -65.7     75.7           0            0.0733
#>  9 06172020_…            8.91       -65.7     75.7           0            0.0729
#> 10 06172020_…            9.92       -65.7     75.7           0            0.0728
#> # ℹ 335 more rows
#> # ℹ 18 more variables: `CO2 mmol/m3` <dbl>, `CO2 mg/m3` <dbl>,
#> #   `CO2 umol/mol` <dbl>, `H2O Absorptance` <dbl>, `H2O mmol/m3` <dbl>,
#> #   `H2O g/m3` <dbl>, `H2O mmol/mol` <dbl>, `H2O(°C)` <dbl>,
#> #   `Cooler Voltage` <dbl>, f_datetime <dttm>, comment <chr>, f_start <dttm>,
#> #   f_end <dttm>, pressure_atm <dbl>, date <chr>, location <chr>,
#> #   time_of_day <chr>, trial <chr>
```
