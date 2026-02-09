# lists gases present in the dataset

prints a character vector of the gases present in the dataset. This is
to be used to obtain the exact names of the gases before using
[licoread_to_fluxible](https://jogaudard.github.io/licoread/reference/licoread_to_fluxible.md).

## Usage

``` r
list_gases(df, file_type = "auto", file_type_list = c("82z", "81x", "auto"))
```

## Arguments

- df:

  the dataframe as imported with
  [licoread](https://jogaudard.github.io/licoread/reference/licoread.md)

- file_type:

  type of file (currently works only for 82z). If "auto" (default), the
  function will try to detect it by itself.

- file_type_list:

  list of file types

## Value

a character vector of the gases present in the dataset

## Examples

``` r
path_82z <- system.file("extdata/82z", package = "licoread")
gas_df_82z <- licoread(path_82z)
list_gases(gas_df_82z)
#> File type is 82z.
#> [1] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"    
```
