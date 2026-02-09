# selects the focus gas and makes a df to use in fluxible

selects the focus gas and checks the columns needed for the fluxible
workflow

## Usage

``` r
licoread_to_fluxible(
  df,
  focus_gas,
  datetime_col,
  id_cols = c("File Name", "Obs#"),
  file_type = "auto",
  file_type_list = c("82z", "81x", "auto")
)
```

## Arguments

- df:

  input dataframe from
  [licoread](https://jogaudard.github.io/licoread/reference/licoread.md)

- focus_gas:

  gas to select

- datetime_col:

  column containing datetime information if date and time are in two
  different columns, provide a character vector of the form c("date",
  "time")

- id_cols:

  columns to identify unique fluxes

- file_type:

  type of file (82z or 81x). If "auto" (default), the function will try
  to detect it by itself.

- file_type_list:

  list of file types

## Value

an unnested df with only the selected gas

## Examples

``` r
path_82z <- system.file("extdata/82z", package = "licoread")
gas_df_82z <- licoread(path_82z)
licoread_to_fluxible(gas_df_82z, "LI-7810_CH4_DRY",
datetime_col = c("LI-8250_DATE", "LI-8250_TIME"))
#> File type is 82z.
#> Unnesting the data...
#> Selecting the focus gas...
#> Formatting datetime column...
#> Looking for start and end of each measurement...
#> # A tibble: 262 × 125
#>    f_fluxid   f_datetime          f_conc f_start             f_end              
#>    <chr>      <dttm>               <dbl> <dttm>              <dttm>             
#>  1 82m-0109-… 2024-07-25 00:00:58  3002. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  2 82m-0109-… 2024-07-25 00:00:59  3002. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  3 82m-0109-… 2024-07-25 00:01:00  3002. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  4 82m-0109-… 2024-07-25 00:01:01  3002. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  5 82m-0109-… 2024-07-25 00:01:02  3002. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  6 82m-0109-… 2024-07-25 00:01:03  3003. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  7 82m-0109-… 2024-07-25 00:01:04  3003. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  8 82m-0109-… 2024-07-25 00:01:05  3003. 2024-07-25 00:00:58 2024-07-25 00:03:08
#>  9 82m-0109-… 2024-07-25 00:01:06  3004. 2024-07-25 00:00:58 2024-07-25 00:03:08
#> 10 82m-0109-… 2024-07-25 00:01:07  3005. 2024-07-25 00:00:58 2024-07-25 00:03:08
#> # ℹ 252 more rows
#> # ℹ 120 more variables: `LI-8250_T_CASE` <dbl>, `LI-8250_PA` <dbl>,
#> #   `LI-8250_T_PA` <dbl>, `LI-8250_PUMP_POSITIVE_PRESSURE` <dbl>,
#> #   `LI-8250_PUMP_NEGATIVE_PRESSURE` <dbl>, `LI-8250_FLOW` <dbl>,
#> #   `LI-8250_PUMP_TIME` <dbl>, `LI-8250_PUMP_SETPOINT` <dbl>,
#> #   `LI-8250_PUMP_CURRENT` <dbl>, `LI-8250_SUB_PRESSURE` <dbl>,
#> #   `LI-8250_SUB_FLOW` <dbl>, `LI-8250_VSO_FLOW_SETPOINT` <dbl>, …
```
