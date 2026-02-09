# to read one measurement from the 82z archive

to read one measurement from the 82z archive

## Usage

``` r
oneobs_82z(filepath, data_file, meta_file, regex_file)
```

## Arguments

- filepath:

  path to the 82z archive

- data_file:

  name of the file with raw data

- meta_file:

  name of the file with meta data

- regex_file:

  regex expression matching the name of the 82z file. Here in case the
  user has a different than the default and for easier updates.

## Value

a tibble with all the data and metadata from one observation (one file)
