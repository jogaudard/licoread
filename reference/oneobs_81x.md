# reading a single measurement from 81x file

reads a single measurement from a licor .81x file

## Usage

``` r
oneobs_81x(start, end, all_obs, file)
```

## Arguments

- start:

  line number at which the measurement starts

- end:

  line number at which the measurement ends

- all_obs:

  list of all the lines from the full file

- file:

  filepath to the 81x files

## Value

a df with 1 row with the meta data of the measurement and raw data
nested
