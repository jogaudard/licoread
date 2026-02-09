# makes df from 81x files compatible with fluxible

makes df from 81x files compatible with fluxible

## Usage

``` r
fluxible_81x(df, focus_gas, id_cols, datetime_col)
```

## Arguments

- df:

  input dataframe from
  [licoread](https://jogaudard.github.io/licoread/reference/licoread.md)

- focus_gas:

  gas to select

- id_cols:

  columns to identify unique fluxes

- datetime_col:

  column containing datetime information

## Value

a df with the focus gas column renamed as "f_conc" and f_fluxid in
chronological order of datetime
