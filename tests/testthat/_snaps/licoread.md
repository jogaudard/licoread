# licoread manual file_type 82z

    Code
      licoread(location = test_path("mixed_files"), file_type = "82z")
    Output
      # A tibble: 5 x 44
        fluxid            data     units    `CHAMBER_AREA_cm+2` CHAMBER_COLLAR_HEIGH~1
        <chr>             <list>   <list>                 <dbl>                  <dbl>
      1 82m-0109-2024072~ <tibble> <tibble>                318.                      5
      2 82m-0109-2024072~ <tibble> <tibble>                318.                      5
      3 82m-0109-2024072~ <tibble> <tibble>                318.                      5
      4 82m-0109-2024072~ <tibble> <tibble>                318.                      5
      5 82m-0109-2024072~ <tibble> <tibble>                318.                      5
      # i abbreviated name: 1: CHAMBER_COLLAR_HEIGHT_cm
      # i 39 more variables: CHAMBER_LATITUDE_degrees <dbl>,
      #   CHAMBER_LONGITUDE_degrees <dbl>, CHAMBER_PARK_POSITION_degrees <dbl>,
      #   CHAMBER_TUBE_LENGTH_cm <dbl>, `CHAMBER_VOLUME_cm+3` <dbl>,
      #   `LI-7810_TUBE_LENGTH_cm` <dbl>, `LI-7810_VOLUME_cm+3` <dbl>,
      #   `LI-7820_TUBE_LENGTH_cm` <dbl>, `LI-7820_VOLUME_cm+3` <dbl>,
      #   `LI-7825_TUBE_LENGTH_cm` <dbl>, `LI-7825_VOLUME_cm+3` <dbl>, ...

# licoread manual file_type 81x

    Code
      licoread(location = test_path("mixed_files"), file_type = "81x")
    Output
      # A tibble: 25 x 50
         id    `LI-8100`        `File Name` `Instrument Name` `Serial Number` Software
         <chr> <chr>            <chr>       <chr>             <chr>           <chr>   
       1 1     "1b1\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       2 2     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       3 3     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       4 4     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       5 5     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       6 6     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       7 7     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       8 8     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
       9 9     "1c5\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
      10 10    "1c6\t      b2\~ 10-28-2011  81A-0107          81A-0107        4.0.0b  
      # i 15 more rows
      # i 44 more variables: Comments <lgl>, `Obs#` <int>, `Port#` <int>,
      #   Label <chr>, `Observation Length` <chr>, `Pre-purge` <chr>,
      #   `Post-purge` <chr>, `IRGA Averaging` <int>, Chamber <int>, TSource <chr>,
      #   Flow8100 <int>, Virga <dbl>, Vext <dbl>, Vcham <dbl>, Offset <dbl>,
      #   Area <dbl>, Vtotal <dbl>, `V4 Info` <chr>, `T4 Info` <chr>,
      #   Labels_01 <int>, CrvFitStatus <chr>, Exp_Flux <dbl>, Exp_FluxCV <dbl>, ...

