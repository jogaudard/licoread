# licoread can read several 82z files

    Code
      str(licoread(test_path("test82z/")), digits.d = 4, width = 100, strict.width = "cut")
    Output
      tibble [7 x 44] (S3: tbl_df/tbl/data.frame)
       $ f_fluxid                               : chr [1:7] "82m-0109-20240725000057" "82m-0109-2024072"..
       $ data                                   :List of 7
        ..$ : tibble [131 x 85] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:131] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:131] 58 59 100 101 102 103 104 105 106 107 ...
        .. ..$ LI-8250_T_CASE                : num [1:131] 32.77 32.78 32.77 32.77 32.78 ...
        .. ..$ LI-8250_PA                    : num [1:131] 98.06 98.06 98.06 98.06 98.06 ...
        .. ..$ LI-8250_T_PA                  : num [1:131] 34.06 34.06 34.06 34.06 34.06 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:131] 27.03 27.13 27.02 27.22 27.29 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:131] -14.99 -15.01 -14.98 -15.02 -15.02 ...
        .. ..$ LI-8250_FLOW                  : num [1:131] 2.935 2.94 2.938 2.936 2.942 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:131] 6312 6312 6312 6312 6312 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:131] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:131] 0.5949 0.5929 0.5913 0.5492 0.5692 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:131] 0.03506 0.04553 0.0272 0.06037 0.05252 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:131] 1.674 1.66 1.653 1.658 1.675 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:131] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:131] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:131] 0.05023 0.12766 0.19564 0.23246 0.13895 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:131] 0.01576 0.0156 0.01987 0.01596 0.01552 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:131] 0.01799 0.0156 0.01416 0.01512 0.01464 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:131] 0.000399 0 0.00012 0.00004 0.000359 0.000199 ..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:131] 0.01648 0.01979 0.01683 0.01624 0.01528 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:131] 0.01552 0.01524 0.01835 0.01696 0.01735 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:131] 0.08761 0.0902 0.08789 0.09104 0.09267 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:131] 0.002035 0.000519 0.000957 0.000798 0.001596 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:131] 0.2341 0.2342 0.2339 0.2338 0.2339 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:131] 0.00012 0 0.000439 0 0.000239 0.00012 0.00008..
        .. ..$ LI-8250_VIN                   : num [1:131] 11.71 11.69 11.68 11.68 11.68 ...
        .. ..$ LI-8250_VOUT                  : num [1:131] 24.15 24.17 24.17 24.18 24.14 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:131] 4.462 4.463 4.464 4.467 4.466 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:131] 4.486 4.489 4.488 4.495 4.492 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:131] 5.024 5.018 5.014 5.006 5.024 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:131] 12.07 12.07 12.07 12.07 12.07 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:131] 4.585 4.595 4.593 4.581 4.598 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:131] 1.867 1.838 1.821 1.832 1.87 ...
        .. ..$ LI-8250_LATITUDE              : num [1:131] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:131] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:131] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:131] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:131] 22.13 22.13 22.13 22.13 22.13 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:131] 40.33 40.33 40.33 40.33 40.33 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:131] 35.71 35.71 35.71 35.71 35.71 ...
        .. ..$ LI-7810_T_LASER               : num [1:131] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:131] 0.003291 0.003284 0.00329 0.003276 0.003283 0..
        .. ..$ LI-7810_RING_DOWN             : num [1:131] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:131] 21.25 -25.5 -20 11.75 5.5 -7.25 -0.25 38 -48...
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:131] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:131] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:131] 21.77 21.77 21.77 21.77 21.77 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:131] 40.07 40.07 40.07 40.07 40.07 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:131] 47.8 47.8 47.8 47.8 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:131] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:131] 0.002129 0.002126 0.002127 0.002129 0.002131 ..
        .. ..$ LI-7820_RING_DOWN             : num [1:131] 41.82 41.82 41.82 41.83 41.82 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:131] -42.1 -28.5 -7.4 11.4 17.3 -32.3 2.1 11 9.9 -..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:131] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:131] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:131] 20.31 20.31 20.3 20.31 20.31 20.29 20.28 20.2..
        .. ..$ CHAMBER_TB                    : num [1:131] 23.66 23.66 23.67 23.66 23.66 23.66 23.66 23...
        .. ..$ CHAMBER_VIN                   : num [1:131] 24.05 23.94 23.83 23.73 23.81 23.89 23.91 23...
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:131] 0.21 0.38 0.54 0.45 0.27 0.29 0.25 0.3 0.24 0..
        .. ..$ CHAMBER_STATE                 : num [1:131] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:131] 0.246 0.246 0.246 0.246 0.246 0.246 0.246 0.2..
        .. ..$ CHAMBER_TS_1                  : num [1:131] 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:131], format: "2024-07-25 00:00:58" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:131] 207 207 207 207 207 ...
        .. ..$ LI-7825_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:131] 21389 21387 21390 21390 21392 ...
        .. ..$ LI-7825_C12                   : num [1:131] 820.7 824.2 823.3 823.7 831.6 ...
        .. ..$ LI-7825_C13                   : num [1:131] 9.092 9.132 9.123 9.129 9.218 ...
        .. ..$ LI-7825_O17                   : num [1:131] 0.6606 0.6623 0.6643 0.6619 0.6678 ...
        .. ..$ LI-7825_O18                   : num [1:131] 3.455 3.47 3.467 3.469 3.502 ...
        .. ..$ LI-7825_NH3                   : num [1:131] -17.2 -17.48 -16.99 -16.59 -16.92 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:131] -13.83 -13.92 -13.97 -13.69 -13.54 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:131] 18.46 17.78 20.56 16.33 15.32 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:131] 8.212 8.028 7.98 8.472 8.405 ...
        .. ..$ LI-7825_PHASE_ERROR           : num [1:131] -15.25 43.25 26.25 17.75 -1.75 24.5 48 49.5 -..
        .. ..$ LI-7825_LASER_T_SHIFT         : num [1:131] -0.1157 -0.1157 -0.1157 -0.1157 -0.1157 ...
        .. ..$ LI-7825_INPUT_VOLTAGE         : num [1:131] 24.18 24.18 24.18 24.18 24.17 ...
        .. ..$ gas_f_conc                    :List of 131
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 830.7 356.6 833.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.4 838.7 357.3 837.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.8 844.5 356.8 836.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.9 849.5 357.3 837
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.2 851.7 357.4 845
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.7 854.6 357.2 851.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.2 859 357.1 855.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.3 864 357 858.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.5 867.4 357.5 861.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004.6 868.4 357 865.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004.8 870.8 357.3 870.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004.1 872.7 357.2 874.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.7 874.7 357.3 875.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.7 877.3 357.2 877.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.2 881.2 357.6 879.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.5 881.9 357.3 881.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.6 882.7 357.6 883.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003.4 881.9 357.7 887.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.2 884.3 357.2 889.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.5 887.9 357.6 890.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.5 892.7 357 888.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.6 896.3 357.4 890.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.8 898.7 357.2 894.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.4 901.8 357.8 899
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.8 904.8 357.3 903.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 907.3 357.7 905.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.8 909.3 357.4 908.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 912 357.7 911.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.1 914.5 357.5 913.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.2 916.1 357.8 916.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 916.6 357.4 918.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.5 917.9 357.5 920.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.3 921.3 357.3 922.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.4 927.1 357.7 923.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.3 932 357.6 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 936.2 358 927.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 939.6 357.7 932.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.8 941.6 357.8 937.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.8 942.8 357.6 941.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.9 940 357.8 945.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 938 357.5 947.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 936.3 357.8 948.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 931.9 357.7 947.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.4 928.6 357.6 945.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 925.3 358 942.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.1 921.5 357.6 940
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.2 920.9 357.8 935.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.5 920.3 357.4 932.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.6 920.3 357.7 929.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 920.8 357.4 927.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997.9 921.2 357.9 927.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.3 920.7 357.7 927.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.6 919.7 358 927.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998.8 919.2 357.7 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.1 918.2 357.5 927.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.3 917.6 357.6 926.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.3 916.9 357.6 925.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.5 916.8 357.6 924.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.7 917 357.5 924.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999.8 917.4 357.5 923.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.3 916.7 357.6 923.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.3 918.4 357.7 923.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.6 919 357.6 923.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.7 920.2 357.7 923.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 921.4 357.5 924.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.1 921.9 358.1 925.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 922.6 357.3 927
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 923.7 357.9 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.5 925 357.3 929
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.3 924.8 358.2 929.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 926.3 357.4 930.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 926.9 357.9 931.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 928.2 357.7 932.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 928.5 357.6 933
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 929.5 358.1 933.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.3 930.6 357.7 934.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 932 357.9 935.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 933.4 357.4 936.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.3 934.1 358 937.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.3 935.7 357.6 938.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 936.2 358 939.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.2 938.2 357.8 940.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.4 939.1 357.9 941.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.7 944 357.9 942.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.3 944.8 357.6 944.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.7 943.4 357.8 945.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.5 944.1 357.8 950.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000.6 944.5 358 952.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.1 950 357.5 950.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.2 971.9 358.1 951
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.9 994.8 357.6 951.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.6 998.7 358.2 953.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.5 993.9 357.8 974.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.2 983.5 358.2 998.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001.5 974.9 357.8 1005.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.3 994.1 358.3 1000.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 1009.2 357.9 991.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.4 999.3 357.9 979.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002.2 997.6 358.4 996.3
        .. .. .. [list output truncated]
        ..$ : tibble [131 x 86] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:131] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:131] 509 510 511 512 513 514 515 516 517 518 ...
        .. ..$ LI-8250_T_CASE                : num [1:131] 32.86 32.86 32.86 32.86 32.86 ...
        .. ..$ LI-8250_PA                    : num [1:131] 98.08 98.08 98.08 98.08 98.08 ...
        .. ..$ LI-8250_T_PA                  : num [1:131] 34.44 34.44 34.44 34.44 34.44 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:131] 22.39 22.32 22.32 22.36 22.64 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:131] -19.83 -19.79 -19.79 -19.78 -19.81 ...
        .. ..$ LI-8250_FLOW                  : num [1:131] 2.682 2.683 2.675 2.682 2.685 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:131] 6312 6312 6312 6312 6312 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:131] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:131] 0.5472 0.5556 0.5508 0.5782 0.5688 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:131] 0.03157 0.02197 0.04728 0.03593 0.01586 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:131] 1.642 1.651 1.639 1.645 1.648 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:131] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:131] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:131] 0.01544 0.01624 0.01524 0.01624 0.0156 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:131] 0.05246 0.13376 0.21571 0.27088 0.18993 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:131] 0.01612 0.01536 0.01544 0.01536 0.01767 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:131] 0.000359 0 0.000439 0.000519 0.00008 0.000439..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:131] 0.01668 0.01532 0.0158 0.01612 0.01588 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:131] 0.01644 0.01548 0.02306 0.0164 0.01759 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:131] 0.089 0.09259 0.08928 0.08948 0.08884 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:131] 0.001117 0.000918 0.001077 0.000319 0.000598 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:131] 0.2335 0.2332 0.2323 0.2329 0.2335 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:131] 0.00012 0.000279 0.00004 0.00004 0.000279 0.0..
        .. ..$ LI-8250_VIN                   : num [1:131] 11.71 11.71 11.67 11.66 11.68 ...
        .. ..$ LI-8250_VOUT                  : num [1:131] 24.18 24.17 24.18 24.17 24.17 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:131] 4.628 4.629 4.629 4.631 4.63 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:131] 4.492 4.489 4.485 4.493 4.493 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:131] 5.016 5.018 5.011 5.012 5.013 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:131] 12.08 12.08 12.07 12.07 12.08 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:131] 3.976 3.982 3.956 3.977 3.976 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:131] 1.798 1.817 1.791 1.804 1.81 ...
        .. ..$ LI-8250_LATITUDE              : num [1:131] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:131] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:131] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:131] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:131] 22.58 22.58 22.58 22.59 22.59 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:131] 40.32 40.32 40.32 40.32 40.32 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:131] 35.71 35.71 35.71 35.71 35.71 ...
        .. ..$ LI-7810_T_LASER               : num [1:131] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:131] 0.003406 0.003407 0.003407 0.003407 0.003409 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:131] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:131] -37.5 -8.5 46.75 -58 53.5 -52.75 4.25 53 11.5..
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:131] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:131] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:131] 22.19 22.2 22.2 22.2 22.2 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:131] 40.06 40.06 40.06 40.06 40.06 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:131] 47.79 47.79 47.79 47.79 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:131] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:131] 0.002108 0.002121 0.002118 0.002119 0.002117 ..
        .. ..$ LI-7820_RING_DOWN             : num [1:131] 41.79 41.79 41.79 41.79 41.79 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:131] -8 24.8 -5.7 -16.4 -5.1 -31 0.1 -19.4 24.2 -1..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:131] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:131] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:131] 20.92 20.92 20.92 20.89 20.85 20.83 20.79 20...
        .. ..$ CHAMBER_TB                    : num [1:131] 24.07 24.08 24.08 24.07 24.07 24.07 24.07 24...
        .. ..$ CHAMBER_VIN                   : num [1:131] 24.01 23.91 23.73 23.62 23.68 23.76 23.8 23.7..
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:131] 0 0.3 0.61 0.56 0.3 0.28 0.35 0.25 0.41 0.31 ..
        .. ..$ CHAMBER_STATE                 : num [1:131] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:131] 0.224 0.224 0.224 0.224 0.224 0.224 0.224 0.2..
        .. ..$ CHAMBER_TS_1                  : num [1:131] 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:131], format: "2024-07-25 00:05:09" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:131] 207 207 207 207 207 ...
        .. ..$ CHAMBER_PPFD                  : num [1:131] 0.6805 0.9073 0.6805 0.4536 0.9073 ...
        .. ..$ LI-7825_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:131] 21840 21843 21847 21850 21851 ...
        .. ..$ LI-7825_C12                   : num [1:131] 1109 1106 1098 1093 1090 ...
        .. ..$ LI-7825_C13                   : num [1:131] 12.24 12.21 12.12 12.07 12.04 ...
        .. ..$ LI-7825_O17                   : num [1:131] 0.8895 0.8906 0.8844 0.8801 0.8768 ...
        .. ..$ LI-7825_O18                   : num [1:131] 4.659 4.649 4.613 4.595 4.583 ...
        .. ..$ LI-7825_NH3                   : num [1:131] -20.82 -21.3 -20.57 -20.5 -20.66 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:131] -17.27 -17.67 -17.58 -17.39 -17.28 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:131] 15.94 18.7 19.06 18.62 18.08 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:131] 6.19 6.014 5.89 6.118 6.186 ...
        .. ..$ LI-7825_PHASE_ERROR           : num [1:131] 21 24.75 -14.5 -13.25 -14 -2.25 11.5 0.5 3.25..
        .. ..$ LI-7825_LASER_T_SHIFT         : num [1:131] -0.1157 -0.1157 -0.1157 -0.1157 -0.1157 ...
        .. ..$ LI-7825_INPUT_VOLTAGE         : num [1:131] 24.17 24.18 24.18 24.18 24.18 ...
        .. ..$ gas_f_conc                    :List of 131
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2980.2 1104.7 356.8 1126.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.8 1102.7 357.3 1124.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.3 1106.5 357.2 1115.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1099.4 356.8 1111
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2976.5 1095.3 357.5 1108
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975.3 1093 356.8 1113.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2974.7 1087.4 356.9 1106.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2974.6 1086.7 357.1 1101.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2974.4 1088.3 356.5 1100.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975 1091 357 1093
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2974.8 1091.1 356.8 1091.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975.1 1086.2 356.7 1093.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975.1 1078.6 357.2 1094.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2976 1058 357 1096
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975 1047.4 356.7 1092.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.4 1035.8 357.1 1085.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972 1029.2 356.6 1067.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972 1030.5 356.7 1053
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.5 1029.7 357.3 1045.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.4 1029.5 356.4 1034.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.1 1029.4 357.1 1036.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.4 1030.2 357.1 1036.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.2 1030.9 356.7 1035.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971 1030 357 1035
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.2 1028 356.6 1035.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.8 1024 356.8 1036.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.9 1019 357.2 1036.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.4 1015.2 356.8 1034.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.9 1011.4 357.3 1031
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.6 1010.1 356.8 1025.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.4 1009.4 356.7 1021.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.2 1008.2 357.4 1018
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.9 1008.2 356.7 1016
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969 1007.4 356.5 1015
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 1008.8 357.1 1014.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 1008.2 356.6 1014.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.6 1008.7 356.8 1014.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 1007.3 357.1 1015
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.5 1006.7 356.7 1015.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.4 1004.9 357.1 1014.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968 1003.5 356.7 1014.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968 1004 357 1013
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.8 1003 356.8 1011.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.7 1002.8 356.5 1010.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.5 1002.8 356.8 1009.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.5 1003.3 356.6 1008.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.4 1003.9 356.7 1008.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.2 1003.7 357.3 1008.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.2 1004.1 356.7 1009.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 1005 357 1010
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 1004.3 356.9 1010.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 1004.6 356.7 1010.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.8 1005 357.3 1010.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.6 1004.6 356.8 1010.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.7 1004.5 356.7 1010.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 1005 357 1011
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.5 1005 356.6 1011.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.6 1006.3 357.4 1011.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.3 1006.1 356.6 1011.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966 1007 357 1012
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966 1007 357 1012
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.2 1007.2 356.6 1012.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.3 1007.3 357.4 1012.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.8 1008.4 356.9 1013.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966 1009.9 356.6 1013.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.8 1010.1 357.2 1013.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.7 1010.2 356.6 1014.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.8 1010.5 356.9 1015.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.6 1011.5 357.2 1015.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.5 1012.2 356.7 1016.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.4 1013 356.9 1016.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.2 1013.4 357.4 1017.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.6 1013.6 356.6 1018.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.2 1013.8 357.2 1018.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.3 1015 357.2 1019.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.3 1015.3 357.1 1019.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965 1016 357 1020
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.2 1017.1 357.1 1020.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965.1 1017.7 356.7 1021.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965 1018 357 1022
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.9 1019.2 357.2 1022.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.8 1020.5 356.6 1023.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.7 1020.3 356.7 1024
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.8 1020.6 357.2 1025
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.5 1021.6 356.7 1026.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965 1022 357 1027
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2965 1023 357 1027
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.6 1023.4 356.7 1027.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.5 1024.7 356.9 1028.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.4 1025.3 357.3 1028.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.4 1026.4 356.8 1029.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.4 1026.8 357.2 1030.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.2 1027.5 357.2 1031.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.1 1028 356.8 1031.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.1 1029.4 357.2 1032.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964 1029.9 357.2 1033.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964.2 1030.1 356.8 1034.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2963.8 1031 357.1 1035.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2964 1032 357 1036
        .. .. .. [list output truncated]
        ..$ : tibble [132 x 85] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:132] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:132] 920 921 922 923 924 925 926 927 928 929 ...
        .. ..$ LI-8250_T_CASE                : num [1:132] 32.92 32.92 32.94 32.93 32.93 ...
        .. ..$ LI-8250_PA                    : num [1:132] 98.07 98.07 98.08 98.07 98.08 ...
        .. ..$ LI-8250_T_PA                  : num [1:132] 34.62 34.62 34.62 34.62 34.62 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:132] 23.83 24.07 24.09 24.12 24.03 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:132] -18.68 -18.69 -18.71 -18.73 -18.73 ...
        .. ..$ LI-8250_FLOW                  : num [1:132] 2.721 2.718 2.72 2.723 2.724 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:132] 6312 6312 6312 6312 6312 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:132] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:132] 0.5578 0.5863 0.5935 0.5672 0.5567 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:132] 0.05339 0.02546 0.0595 0.05601 0.01586 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:132] 1.678 1.671 1.677 1.683 1.681 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:132] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:132] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:132] 0.01492 0.01536 0.01799 0.0148 0.01372 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:132] 0.02015 0.01564 0.01648 0.01971 0.01552 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:132] 0.04436 0.11601 0.16496 0.16831 0.13712 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:132] 0.000559 0.000319 0 0.000439 0.000199 0.00027..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:132] 0.01492 0.01688 0.01612 0.02146 0.01468 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:132] 0.0219 0.01576 0.01528 0.01632 0.01747 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:132] 0.08785 0.08872 0.0884 0.08972 0.08928 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:132] 0.000798 0.000758 0.000997 0.001715 0.001117 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:132] 0.2336 0.2341 0.2341 0.2334 0.2342 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:132] 0.00004 0.00004 0.00008 0.000239 0.00008 0.00..
        .. ..$ LI-8250_VIN                   : num [1:132] 11.72 11.71 11.7 11.68 11.7 ...
        .. ..$ LI-8250_VOUT                  : num [1:132] 24.16 24.17 24.18 24.14 24.16 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:132] 4.623 4.625 4.624 4.626 4.622 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:132] 4.564 4.561 4.562 4.565 4.557 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:132] 5.015 5.011 5.006 5.007 5.018 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:132] 12.07 12.07 12.08 12.07 12.08 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:132] 4.044 4.024 4.031 4.038 4.045 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:132] 1.876 1.861 1.873 1.886 1.882 ...
        .. ..$ LI-8250_LATITUDE              : num [1:132] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:132] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:132] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:132] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:132] 22.83 22.83 22.83 22.82 22.82 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:132] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:132] 40.33 40.33 40.33 40.33 40.33 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:132] 35.7 35.7 35.7 35.7 35.7 ...
        .. ..$ LI-7810_T_LASER               : num [1:132] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:132] 0.003408 0.003405 0.003409 0.003421 0.003401 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:132] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:132] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:132] 37.25 24.75 12.25 -42 31.25 -1.5 -22.5 74.25 ..
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:132] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:132] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:132] 22.43 22.43 22.43 22.42 22.42 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:132] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:132] 40.07 40.07 40.07 40.07 40.07 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:132] 47.79 47.79 47.79 47.79 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:132] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:132] 0.002091 0.002101 0.0021 0.002091 0.00209 0.0..
        .. ..$ LI-7820_RING_DOWN             : num [1:132] 41.79 41.79 41.79 41.79 41.79 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:132] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:132] 20.3 -6.6 -21.6 -9.2 5.1 3.1 -33.3 40.9 -33.4..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:132] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:132] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:132] 20.67 20.67 20.67 20.67 20.67 20.66 20.64 20...
        .. ..$ CHAMBER_TB                    : num [1:132] 24.13 24.14 24.13 24.13 24.14 24.13 24.13 24...
        .. ..$ CHAMBER_VIN                   : num [1:132] 24.09 24.01 23.93 23.82 23.81 23.89 23.91 23...
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:132] 0 0.24 0.37 0.51 0.36 0.24 0.21 0.33 0.2 0.19..
        .. ..$ CHAMBER_STATE                 : num [1:132] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:132] 0.284 0.284 0.284 0.284 0.284 0.284 0.284 0.2..
        .. ..$ CHAMBER_TS_1                  : num [1:132] 23.9 23.9 23.9 23.9 23.9 23.9 23.9 23.9 23.9 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:132], format: "2024-07-25 00:09:20" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:132] 207 207 207 207 207 ...
        .. ..$ LI-7825_DIAG                  : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:132] 22080 22077 22081 22074 22073 ...
        .. ..$ LI-7825_C12                   : num [1:132] 920.4 919 917.8 916.4 915.1 ...
        .. ..$ LI-7825_C13                   : num [1:132] 10.18 10.17 10.16 10.14 10.13 ...
        .. ..$ LI-7825_O17                   : num [1:132] 0.7416 0.7411 0.7389 0.7386 0.7363 ...
        .. ..$ LI-7825_O18                   : num [1:132] 3.872 3.867 3.863 3.856 3.85 ...
        .. ..$ LI-7825_NH3                   : num [1:132] -18.42 -18.25 -18.51 -18.65 -18.18 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:132] -15.33 -15.35 -15.35 -15.53 -15.32 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:132] 19.67 20.73 18.9 19.63 18.26 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:132] 7.448 7.582 7.493 7.419 7.448 ...
        .. ..$ LI-7825_PHASE_ERROR           : num [1:132] -21.75 -9.5 -48 -36.75 32.75 -11.75 12 25.25 ..
        .. ..$ LI-7825_LASER_T_SHIFT         : num [1:132] -0.1157 -0.1157 -0.1157 -0.1157 -0.1157 ...
        .. ..$ LI-7825_INPUT_VOLTAGE         : num [1:132] 24.18 24.18 24.18 24.17 24.18 ...
        .. ..$ gas_f_conc                    :List of 132
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975 924.3 357.2 935.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2975 923.2 358 933.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2974.5 924.1 357.5 932.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.9 923.2 357.3 931.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.5 922.1 357.3 929.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.2 917.9 357.8 930.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.9 919.3 357.6 930.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.2 922.9 357.3 929.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.3 922 357 924.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.3 921.5 357.5 925.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.6 917.8 357.6 929.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.8 919.3 357.5 928.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.1 920.6 357.3 928.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.3 923.4 357.2 924.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2973.1 919.5 357.6 925.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.7 915.1 357.9 927.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.5 915.5 357.5 929.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.4 915.9 357.3 927.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.4 915.6 357.7 922.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.1 917.8 358.1 922.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.8 918.8 357.4 923.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.7 919.6 357.3 923.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.7 920.6 357.4 924.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.8 921.1 357.6 925.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.1 921.7 357.6 926.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.2 922.5 357.5 927.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972 922.9 357.6 927.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2972.1 923 357.8 928.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.9 923.7 357.3 929.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.6 924.7 357.4 929.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.7 926.3 357.9 929.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.3 927.6 357.9 930.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.3 929.8 357.4 931.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.1 930.5 357.1 932.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.2 931.7 357.5 934.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.2 933.2 358.2 935.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.1 933.9 357.8 937
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2971.1 935 357.3 938.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.9 935 357.5 939.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.8 936.8 357.5 940.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.7 937.2 358.2 941.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.8 938.3 357.5 942
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.5 940.9 357.4 942.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.4 941.1 357.8 943.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.3 942.4 357.9 944.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.1 943.7 357.5 946
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.2 944.3 357.3 947.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.2 945.7 357.3 948.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.1 947.3 358.1 949.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.1 948.3 358.1 950.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.1 949.3 357.7 951.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970.2 950.1 357.6 953
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.8 950.8 357.4 954
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2970 952.3 357.3 955
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.8 953.3 357.6 956
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.7 954.2 358.2 957
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.6 955.8 357.8 958.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.6 957.3 357.8 959.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.7 957.7 357.8 960.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.5 958.5 357.5 961.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.5 960 357.5 962.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.6 961.2 357.1 963.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.4 961.7 357.6 964.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.3 963.4 357.9 965.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.2 964.8 358.1 966.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2969.2 965.4 357.9 967.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.9 966.5 357.3 969
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 967.2 357.3 970
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.9 967.9 357.8 971.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.6 969.3 358.3 972.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.7 970.8 358.1 973.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 972 357.7 974.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.5 973.2 357.2 975.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.8 973.2 357.5 976.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.4 975.8 357.4 977.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.6 976.7 357.8 978.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.3 977 357.7 979.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.5 978.3 357.7 980.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.2 979.5 357.5 982
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.3 981.2 357.1 983.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.2 981.8 357.4 984.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968.2 983.3 357.8 985.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968 983.9 358 986.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2968 985.1 357.7 987.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.8 986.3 357.4 988.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.8 986.9 357.4 989.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.8 988.3 357.7 990.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.7 989.6 358.1 991.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.6 990.3 358 992.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.5 991.6 357.7 993.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.3 993 357.6 994.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.5 994 357.4 996
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.4 995.1 357.6 997.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.3 996 358.1 998.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.3 997.2 357.7 999.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967.1 997.7 357.7 1000.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 998.5 358.1 1001.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2966.9 999.8 357.6 1002.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2967 1001.1 357.8 1003.4
        .. .. .. [list output truncated]
        ..$ : tibble [311 x 85] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:311] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:311] 1332 1333 1334 1335 1336 1337 1338 1339 1340 ..
        .. ..$ LI-8250_T_CASE                : num [1:311] 33.04 33.03 33.04 33.04 33.03 ...
        .. ..$ LI-8250_PA                    : num [1:311] 98.07 98.07 98.07 98.08 98.07 ...
        .. ..$ LI-8250_T_PA                  : num [1:311] 34.69 34.69 34.69 34.75 34.75 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:311] 25.28 25.59 25.58 25.46 25.28 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:311] -18.54 -18.59 -18.62 -18.61 -18.55 ...
        .. ..$ LI-8250_FLOW                  : num [1:311] 2.694 2.701 2.695 2.696 2.694 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:311] 6312 6312 6312 6312 6312 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:311] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:311] 0.5895 0.5486 0.5627 0.5623 0.5732 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:311] 0.047281 0.075216 0.008871 0.040298 0.028076 ..
        .. ..$ LI-8250_SUB_FLOW              : num [1:311] 1.645 1.641 1.658 1.658 1.656 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:311] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:311] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:311] 0.01743 0.03136 0.01528 0.02071 0.01436 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:311] 0.01624 0.01827 0.01564 0.03195 0.02996 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:311] 0.01468 0.01444 0.01488 0.0152 0.03028 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:311] 0.00008 0.00008 0.00012 0.00012 0.00012 0.000..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:311] 0.04265 0.09164 0.15579 0.20338 0.14964 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:311] 0.01656 0.0164 0.01644 0.01668 0.01472 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:311] 0.09196 0.0884 0.08829 0.08805 0.09044 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:311] 0.001476 0.001117 0.001476 0.000399 0.001237 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:311] 0.2347 0.2345 0.2345 0.2345 0.2346 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:311] 0.000199 0 0.00016 0.000279 0.00016 0.00012 0..
        .. ..$ LI-8250_VIN                   : num [1:311] 11.73 11.71 11.71 11.68 11.68 ...
        .. ..$ LI-8250_VOUT                  : num [1:311] 24.16 24.17 24.15 24.18 24.16 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:311] 4.632 4.632 4.632 4.631 4.633 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:311] 4.582 4.586 4.583 4.584 4.586 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:311] 5.007 5.004 5.013 5.006 5.015 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:311] 12.07 12.08 12.07 12.07 12.08 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:311] 3.914 3.924 3.907 3.916 3.916 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:311] 1.803 1.795 1.83 1.831 1.826 ...
        .. ..$ LI-8250_LATITUDE              : num [1:311] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:311] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:311] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:311] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:311] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:311] 22.54 22.54 22.54 22.54 22.54 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:311] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:311] 40.33 40.33 40.33 40.33 40.33 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:311] 35.71 35.71 35.71 35.71 35.71 ...
        .. ..$ LI-7810_T_LASER               : num [1:311] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:311] 0.003367 0.003363 0.003346 0.003361 0.003357 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:311] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:311] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:311] -11 9 36 -45.75 -21 27.5 -38.5 55.25 -4.5 -27..
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:311] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:311] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:311] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:311] 22.16 22.16 22.16 22.15 22.15 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:311] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:311] 40.07 40.07 40.07 40.07 40.07 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:311] 47.8 47.8 47.8 47.8 47.8 ...
        .. ..$ LI-7820_T_LASER               : num [1:311] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:311] 0.002117 0.002118 0.002113 0.002113 0.002116 ..
        .. ..$ LI-7820_RING_DOWN             : num [1:311] 41.8 41.8 41.8 41.8 41.8 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:311] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:311] -30.6 -56.6 -31.2 28.6 13 -6 -21.2 -15.5 0 -5..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:311] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:311] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:311] 71.31 71.31 71.29 71.31 71.31 71.31 71.29 71...
        .. ..$ CHAMBER_TB                    : num [1:311] 22.35 22.35 22.35 22.36 22.36 22.35 22.35 22...
        .. ..$ CHAMBER_VIN                   : num [1:311] 23.85 23.88 23.77 23.63 23.76 23.75 23.77 23...
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:311] 0.41 0.16 0.3 0.47 0.28 0.23 0.17 0.24 0.2 0...
        .. ..$ CHAMBER_STATE                 : num [1:311] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:311] 32 32 32 32 32 32 32 32 32 32 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:311] 0.162 0.162 0.162 0.162 0.162 0.162 0.162 0.1..
        .. ..$ CHAMBER_TS_1                  : num [1:311] 23.9 23.9 23.9 23.9 23.9 23.9 23.9 23.9 23.9 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:311], format: "2024-07-25 00:13:32" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:311] 207 207 207 207 207 ...
        .. ..$ LI-7825_DIAG                  : num [1:311] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:311] 21803 21802 21800 21798 21797 ...
        .. ..$ LI-7825_C12                   : num [1:311] 996.4 997.6 998.2 998 997 ...
        .. ..$ LI-7825_C13                   : num [1:311] 11.01 11.03 11.03 11.03 11.02 ...
        .. ..$ LI-7825_O17                   : num [1:311] 0.8009 0.8019 0.8029 0.8028 0.803 ...
        .. ..$ LI-7825_O18                   : num [1:311] 4.192 4.197 4.199 4.198 4.193 ...
        .. ..$ LI-7825_NH3                   : num [1:311] -19.26 -19.28 -18.98 -18.96 -19.02 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:311] -16.5 -16.48 -16.51 -16.56 -16.49 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:311] 17.34 17.28 17.87 18.17 19.2 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:311] 7.219 7.204 7.183 7.108 7.082 ...
        .. ..$ LI-7825_PHASE_ERROR           : num [1:311] -5.75 34.5 13.25 2.5 -16.5 -13 -13.75 28.25 1..
        .. ..$ LI-7825_LASER_T_SHIFT         : num [1:311] -0.1157 -0.1157 -0.1157 -0.1157 -0.1157 ...
        .. ..$ LI-7825_INPUT_VOLTAGE         : num [1:311] 24.18 24.18 24.18 24.18 24.18 ...
        .. ..$ gas_f_conc                    :List of 311
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.3 1007.9 357.6 1012.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.5 1007.2 357.2 1013.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.7 1007.3 357.2 1014.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979.2 1007.6 357.1 1014
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2979 1009 357 1013
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978.3 1009.8 357.7 1013
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1009.9 357.5 1013.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.3 1010.4 357.1 1014.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1011 357 1015
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1013 357 1015
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2976.8 1012.7 357.1 1015.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1013.5 357.3 1016.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1014.5 357.5 1017.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.5 1017.4 357.4 1018.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1016 356.9 1018.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1011.5 357.3 1019.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1010.3 357.4 1022
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1010.1 357.5 1023.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.4 1010.8 357.6 1017
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.5 1011 357.3 1016.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.1 1010.2 357.2 1015.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.3 1011.1 356.8 1015.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.1 1013.4 356.7 1017
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.1 1015.6 356.7 1016.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.2 1017 356.8 1016.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.4 1019.8 357.2 1018.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1023.2 357.3 1020.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1024 357 1022
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1022.4 357.1 1024.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1021.7 356.8 1028.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1021.4 357.4 1029.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1021.9 357.3 1027.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1022.4 356.9 1026.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1022 357 1026
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.5 1023.8 357.3 1027.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.5 1025.8 356.8 1027.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1027 357 1027
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.4 1028.9 357.4 1029
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1029.3 357.4 1030.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1031.4 356.5 1031.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1031.9 356.9 1032.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1032.3 356.9 1034.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1033.6 356.7 1036
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1034.3 357.4 1037
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1036.4 357.3 1037.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1036 357 1038
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1036 357.2 1039.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1038 356.8 1040.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1038.5 356.8 1041.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1038.2 356.6 1041.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1039.4 356.7 1042.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1040.2 356.6 1043.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1041 357 1044
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1041.9 356.5 1044.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1043 357 1045
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1044 357 1046
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1045.2 357.3 1046.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1046 357 1048
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.5 1046.8 356.7 1049
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1047.2 356.8 1049.8
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1047 357.3 1050.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1048.2 357.2 1051
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1048.2 357.3 1051.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1049.3 357.1 1051.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1049.6 357.2 1052.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1050 357.2 1053.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977 1050 357 1054
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1050.9 356.8 1054.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1051.5 356.7 1055
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1052.9 356.4 1055.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1054 356.6 1055.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1053.6 357.1 1056.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1053.7 356.6 1057.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1054.4 356.6 1058.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1055.6 356.9 1058.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1055.7 356.4 1058.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1055.5 356.5 1059.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1055.9 356.6 1060.4
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1056.9 357.1 1061
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1057 357 1061
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1057.7 356.5 1061.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1058.7 356.8 1061.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1058.9 356.7 1062.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1059.5 356.8 1062.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1060.2 356.5 1063.3
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1060.3 356.5 1063.9
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1061 357 1065
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1062.2 357.3 1065
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1061.9 356.5 1065.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1062.1 356.9 1066.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1063.9 356.7 1066.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1063.2 357.2 1066.6
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1064.2 357.4 1067.1
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1064.9 356.8 1067.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.9 1064.7 356.5 1068.2
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.8 1065.2 356.7 1068.5
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2978 1066 357 1069
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.6 1066.9 356.4 1069.7
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2977.7 1067.1 356.9 1070.3
        .. .. .. [list output truncated]
        ..$ : tibble [131 x 103] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:131] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:131] 2455 2456 2457 2458 2459 2500 2501 2502 2503 ..
        .. ..$ LI-8250_T_CASE                : num [1:131] 33.29 33.29 33.28 33.29 33.29 ...
        .. ..$ LI-8250_PA                    : num [1:131] 98.07 98.07 98.07 98.07 98.07 ...
        .. ..$ LI-8250_T_PA                  : num [1:131] 34.81 34.81 34.81 34.81 34.81 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:131] 49.9 49.83 50.01 49.66 49.71 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:131] -4.696 -4.616 -4.71 -4.665 -4.705 ...
        .. ..$ LI-8250_FLOW                  : num [1:131] 3.262 3.263 3.265 3.258 3.262 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:131] 6313 6313 6313 6313 6313 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:131] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:131] 0.6695 0.6769 0.6905 0.6671 0.6912 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:131] 0.03331 0.0272 0.0176 0.02982 0.04292 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:131] 1.657 1.666 1.656 1.656 1.67 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:131] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:131] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:131] 0.01376 0.01428 0.0146 0.01612 0.01444 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:131] 0.01572 0.01404 0.01576 0.01656 0.02102 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:131] 0.01548 0.01376 0.01763 0.0158 0.01504 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:131] 0.00008 0 0 0 0 0 0.000319 0 0.00016 0 ...
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:131] 0.0142 0.01616 0.01604 0.0219 0.01596 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:131] 0.015 0.01428 0.01648 0.01632 0.01831 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:131] 0.4404 0.5027 0.5896 0.6985 0.5833 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:131] 0.001915 0.001396 0.000399 0.000519 0.001396 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:131] 0.2464 0.2466 0.246 0.2464 0.2461 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:131] 0.000359 0.000239 0.00004 0.00004 0.00004 0.0..
        .. ..$ LI-8250_VIN                   : num [1:131] 11.61 11.6 11.57 11.52 11.57 ...
        .. ..$ LI-8250_VOUT                  : num [1:131] 24.14 24.15 24.18 24.16 24.15 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:131] 4.593 4.594 4.591 4.594 4.595 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:131] 5.737 5.759 5.746 5.72 5.742 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:131] 5.025 5.013 5.011 5.011 5.015 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:131] 12.07 12.07 12.07 12.07 12.08 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:131] 4.781 4.787 4.786 4.775 4.786 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:131] 1.829 1.846 1.826 1.826 1.856 ...
        .. ..$ LI-8250_LATITUDE              : num [1:131] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:131] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:131] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:131] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:131] 22.52 22.52 22.52 22.52 22.52 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:131] 40.32 40.32 40.32 40.32 40.32 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:131] 35.71 35.71 35.71 35.71 35.71 ...
        .. ..$ LI-7810_T_LASER               : num [1:131] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:131] 0.003361 0.003351 0.003362 0.003357 0.003358 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:131] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:131] -88 -21.5 30 -4.5 -31 37.75 33.25 -17.5 65.25..
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:131] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:131] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:131] 22.14 22.14 22.14 22.14 22.14 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:131] 40.06 40.06 40.06 40.06 40.06 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:131] 47.79 47.79 47.79 47.79 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:131] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:131] 0.002132 0.002137 0.002133 0.00213 0.002133 0..
        .. ..$ LI-7820_RING_DOWN             : num [1:131] 41.78 41.78 41.78 41.78 41.78 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:131] -28.9 14.6 -6.4 -4.6 -31.5 -13.5 -59.1 33.2 -..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:131] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:131] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:131] 20.47 20.47 20.48 20.47 20.45 20.41 20.39 20...
        .. ..$ CHAMBER_TB                    : num [1:131] 23.64 23.64 23.64 23.64 23.64 23.64 23.64 23...
        .. ..$ CHAMBER_VIN                   : num [1:131] 23.44 23.17 22.95 22.55 22.81 22.92 22.96 22...
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:131] 0 0.32 0.38 0.6 0.34 0.33 0.35 0.27 0.29 0.51..
        .. ..$ CHAMBER_STATE                 : num [1:131] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:131] 0.171 0.171 0.171 0.171 0.171 0.171 0.171 0.1..
        .. ..$ CHAMBER_TS_1                  : num [1:131] 23 23 23 23 23 23 23 23 23 23 ...
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:131], format: "2024-07-25 00:24:55" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:131] 207 207 207 207 207 ...
        .. ..$ 8250-01_T_CASE                : num [1:131] 25.21 25.21 25.21 25.21 25.21 25.21 25.21 25...
        .. ..$ 8250-01_PUMP_TIME             : num [1:131] 5712 5712 5712 5712 5712 ...
        .. ..$ 8250-01_PUMP_SETPOINT         : num [1:131] 170 170 170 170 170 170 170 170 170 170 ...
        .. ..$ 8250-01_PUMP_CURRENT          : num [1:131] 0.398 0.41 0.417 0.406 0.401 0.396 0.4 0.404 ..
        .. ..$ 8250-01_PORT1_CURRENT         : num [1:131] 0.018 0.025 0.086 0.144 0.261 0.228 0.181 0.1..
        .. ..$ 8250-01_PORT2_CURRENT         : num [1:131] 0.016 0.015 0.016 0.015 0.016 0.016 0.017 0.0..
        .. ..$ 8250-01_PORT3_CURRENT         : num [1:131] 0.016 0.016 0.016 0.015 0.015 0.017 0.018 0.0..
        .. ..$ 8250-01_PORT4_CURRENT         : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT5_CURRENT         : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT6_CURRENT         : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT7_CURRENT         : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT8_CURRENT         : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_SOL_CURRENT           : num [1:131] 0.184 0.184 0.184 0.184 0.184 0.184 0.183 0.1..
        .. ..$ 8250-01_VIN                   : num [1:131] 23.57 23.57 23.46 23.35 23.15 ...
        .. ..$ 8250-01_12VDC_VOLTAGE         : num [1:131] 12.1 12.11 12.1 12.1 12.1 ...
        .. ..$ 8250-01_5VDC_VOLTAGE          : num [1:131] 4.98 4.98 4.98 4.98 4.98 4.98 4.98 4.98 4.98 ..
        .. ..$ 8250-01_3.3VDC_VOLTAGE        : num [1:131] 3.303 3.303 3.303 3.303 3.305 3.303 3.303 3.3..
        .. ..$ 8250-01_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:131] 21793 21796 21794 21798 21801 ...
        .. ..$ LI-7825_C12                   : num [1:131] 1268 1269 1273 1274 1271 ...
        .. ..$ LI-7825_C13                   : num [1:131] 13.99 14 14.04 14.05 14.02 ...
        .. ..$ LI-7825_O17                   : num [1:131] 1.018 1.017 1.02 1.023 1.022 ...
        .. ..$ LI-7825_O18                   : num [1:131] 5.328 5.332 5.348 5.351 5.34 ...
        .. ..$ LI-7825_NH3                   : num [1:131] -22.07 -22.22 -21.56 -22.04 -22.77 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:131] -18.13 -18.17 -18.1 -18.22 -18.26 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:131] 15.4 14.11 14.43 16.33 17.4 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:131] 5.958 5.942 6.088 6.036 5.916 ...
        .. .. [list output truncated]
        ..$ : tibble [312 x 103] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:312] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:312] 2906 2907 2908 2909 2910 2911 2912 2913 2914 ..
        .. ..$ LI-8250_T_CASE                : num [1:312] 33.49 33.49 33.49 33.5 33.49 ...
        .. ..$ LI-8250_PA                    : num [1:312] 98.06 98.06 98.06 98.06 98.06 ...
        .. ..$ LI-8250_T_PA                  : num [1:312] 35.31 35.31 35.31 35.31 35.31 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:312] 51.55 51.08 51.06 51.19 51.51 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:312] -4.104 -4.071 -4.059 -4.108 -4.102 ...
        .. ..$ LI-8250_FLOW                  : num [1:312] 3.274 3.276 3.277 3.271 3.282 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:312] 6313 6313 6313 6313 6313 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:312] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:312] 0.6794 0.6467 0.6779 0.6754 0.6806 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:312] 0.057757 -0.002477 0.014109 0.019347 0.027203..
        .. ..$ LI-8250_SUB_FLOW              : num [1:312] 1.66 1.667 1.657 1.658 1.683 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:312] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:312] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:312] 0.01576 0.01556 0.01428 0.01484 0.01492 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:312] 0.01675 0.01576 0.01548 0.01432 0.01428 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:312] 0.01616 0.015 0.01572 0.01492 0.01524 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:312] 0.00016 0 0.00016 0.00008 0.00008 0.000239 0 ..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:312] 0.01755 0.01524 0.0158 0.01691 0.01636 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:312] 0.01616 0.01516 0.01476 0.01456 0.02023 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:312] 0.4484 0.4738 0.5345 0.5899 0.5402 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:312] 0.001157 0.000439 0.000997 0.001037 0.000918 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:312] 0.2467 0.2459 0.2464 0.2463 0.246 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:312] 0 0.00008 0.00004 0.000359 0.00004 0.00012 0...
        .. ..$ LI-8250_VIN                   : num [1:312] 11.61 11.6 11.58 11.56 11.58 ...
        .. ..$ LI-8250_VOUT                  : num [1:312] 24.16 24.17 24.17 24.15 24.15 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:312] 4.618 4.617 4.616 4.618 4.615 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:312] 6.169 6.162 6.147 6.161 6.133 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:312] 5.01 5.009 5.005 5.013 5.013 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:312] 12.07 12.07 12.07 12.07 12.07 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:312] 4.759 4.779 4.784 4.761 4.782 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:312] 1.833 1.847 1.825 1.828 1.882 ...
        .. ..$ LI-8250_LATITUDE              : num [1:312] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:312] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:312] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:312] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:312] 22.65 22.65 22.65 22.65 22.65 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:312] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:312] 40.33 40.33 40.33 40.33 40.33 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:312] 35.7 35.7 35.7 35.7 35.7 ...
        .. ..$ LI-7810_T_LASER               : num [1:312] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:312] 0.003395 0.003384 0.003392 0.003376 0.003385 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:312] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:312] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:312] -72.75 -7.5 15.5 -49.75 15.5 73.75 -64.25 24...
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:312] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:312] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:312] 22.26 22.26 22.26 22.26 22.26 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:312] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:312] 40.07 40.07 40.07 40.07 40.07 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:312] 47.78 47.79 47.79 47.79 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:312] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:312] 0.002109 0.002112 0.002103 0.002108 0.00211 0..
        .. ..$ LI-7820_RING_DOWN             : num [1:312] 41.8 41.8 41.8 41.8 41.8 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:312] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:312] 38.4 34.6 -14.3 -23.8 -51.2 -31.5 1.2 34 -6.3..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:312] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:312] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:312] 19.97 19.97 19.97 19.97 19.97 19.95 19.92 19...
        .. ..$ CHAMBER_TB                    : num [1:312] 22.01 22.01 22 22.01 22.01 22.01 22.01 22 22...
        .. ..$ CHAMBER_VIN                   : num [1:312] 23.39 23.32 23.2 22.94 22.91 23.02 23.05 23.0..
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:312] 0 0.18 0.3 0.33 0.31 0.16 0.21 0.28 0.17 0.21..
        .. ..$ CHAMBER_STATE                 : num [1:312] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:312] 0.153 0.153 0.153 0.153 0.153 0.153 0.153 0.1..
        .. ..$ CHAMBER_TS_1                  : num [1:312] 23.7 23.7 23.7 23.7 23.7 23.7 23.7 23.7 23.7 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:312], format: "2024-07-25 00:29:06" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:312] 207 207 207 207 207 ...
        .. ..$ 8250-01_T_CASE                : num [1:312] 25.46 25.45 25.45 25.45 25.46 25.45 25.45 25...
        .. ..$ 8250-01_PUMP_TIME             : num [1:312] 5712 5712 5712 5712 5712 ...
        .. ..$ 8250-01_PUMP_SETPOINT         : num [1:312] 170 170 170 170 170 170 170 170 170 170 ...
        .. ..$ 8250-01_PUMP_CURRENT          : num [1:312] 0.41 0.407 0.396 0.409 0.405 0.41 0.406 0.395..
        .. ..$ 8250-01_PORT1_CURRENT         : num [1:312] 0.017 0.015 0.018 0.017 0.018 0.017 0.018 0.0..
        .. ..$ 8250-01_PORT2_CURRENT         : num [1:312] 0.017 0.022 0.074 0.117 0.192 0.148 0.126 0.1..
        .. ..$ 8250-01_PORT3_CURRENT         : num [1:312] 0.016 0.016 0.015 0.016 0.017 0.018 0.016 0.0..
        .. ..$ 8250-01_PORT4_CURRENT         : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT5_CURRENT         : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT6_CURRENT         : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT7_CURRENT         : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT8_CURRENT         : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_SOL_CURRENT           : num [1:312] 0.189 0.189 0.189 0.189 0.189 0.189 0.189 0.1..
        .. ..$ 8250-01_VIN                   : num [1:312] 23.57 23.56 23.48 23.39 23.28 ...
        .. ..$ 8250-01_12VDC_VOLTAGE         : num [1:312] 12.1 12.1 12.1 12.11 12.1 ...
        .. ..$ 8250-01_5VDC_VOLTAGE          : num [1:312] 4.98 4.98 4.982 4.98 4.98 4.982 4.98 4.98 4.9..
        .. ..$ 8250-01_3.3VDC_VOLTAGE        : num [1:312] 3.303 3.303 3.303 3.303 3.303 3.303 3.303 3.3..
        .. ..$ 8250-01_DIAG                  : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_DIAG                  : num [1:312] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:312] 21908 21904 21908 21904 21907 ...
        .. ..$ LI-7825_C12                   : num [1:312] 983.2 981.1 979.9 976.2 974.7 ...
        .. ..$ LI-7825_C13                   : num [1:312] 10.86 10.84 10.83 10.79 10.77 ...
        .. ..$ LI-7825_O17                   : num [1:312] 0.7915 0.7895 0.7896 0.7869 0.7845 ...
        .. ..$ LI-7825_O18                   : num [1:312] 4.137 4.127 4.122 4.106 4.101 ...
        .. ..$ LI-7825_NH3                   : num [1:312] -19.2 -18.96 -19.11 -18.89 -18.68 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:312] -16.63 -16.74 -16.66 -16.73 -16.56 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:312] 18.9 17.95 20.02 20.06 18.5 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:312] 7.328 7.152 7.149 7.071 7.272 ...
        .. .. [list output truncated]
        ..$ : tibble [132 x 103] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:132] 20240725 20240725 20240725 20240725 20240725 ..
        .. ..$ LI-8250_TIME                  : num [1:132] 3618 3619 3620 3621 3622 3623 3624 3625 3626 ..
        .. ..$ LI-8250_T_CASE                : num [1:132] 33.76 33.76 33.75 33.76 33.76 ...
        .. ..$ LI-8250_PA                    : num [1:132] 98.06 98.07 98.07 98.07 98.07 ...
        .. ..$ LI-8250_T_PA                  : num [1:132] 35.62 35.62 35.62 35.62 35.62 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:132] 49.82 50.3 49.94 50.33 49.88 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:132] -5.144 -5.222 -5.116 -5.145 -5.156 ...
        .. ..$ LI-8250_FLOW                  : num [1:132] 3.212 3.221 3.215 3.221 3.213 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:132] 6313 6313 6313 6313 6313 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:132] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:132] 0.6383 0.6623 0.6437 0.6867 0.643 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:132] 0.014982 0.0499 0.015855 0.050773 0.007126 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:132] 1.657 1.661 1.666 1.668 1.667 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:132] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:132] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:132] 0.01488 0.01592 0.01508 0.01879 0.01568 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:132] 0.01592 0.01368 0.01612 0.01552 0.015 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:132] 0.0138 0.01552 0.01803 0.01364 0.01464 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:132] 0 0 0.000399 0 0.000199 0 0.00004 0.00012 0.0..
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:132] 0.02142 0.01632 0.01604 0.0148 0.01644 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:132] 0.01616 0.02007 0.01616 0.01688 0.01584 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:132] 0.3925 0.4879 0.5635 0.589 0.5217 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:132] 0.001596 0.001157 0.001037 0.001117 0.001077 ..
        .. ..$ LI-8250_SOL_CURRENT           : num [1:132] 0.2365 0.2363 0.2368 0.2363 0.2367 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:132] 0.00016 0 0.000279 0 0.00004 0.000199 0.00004..
        .. ..$ LI-8250_VIN                   : num [1:132] 11.62 11.59 11.58 11.57 11.58 ...
        .. ..$ LI-8250_VOUT                  : num [1:132] 24.15 24.15 24.15 24.15 24.16 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:132] 4.625 4.625 4.626 4.626 4.624 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:132] 5.631 5.634 5.64 5.635 5.628 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:132] 5.018 5.011 5.013 5.015 5.01 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:132] 12.07 12.07 12.07 12.07 12.07 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:132] 4.631 4.64 4.636 4.64 4.632 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:132] 1.823 1.833 1.845 1.849 1.847 ...
        .. ..$ LI-8250_LATITUDE              : num [1:132] 40.86 40.86 40.86 40.86 40.86 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:132] -96.65 -96.65 -96.65 -96.65 -96.65 ...
        .. ..$ LI-8250_SATELLITES            : num [1:132] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:132] 351.2 351.2 351.2 351.2 351.2 351.2 351.2 351..
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:132] 22.7 22.7 22.7 22.7 22.7 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:132] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:132] 40.33 40.33 40.33 40.33 40.33 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:132] 35.7 35.7 35.7 35.7 35.7 ...
        .. ..$ LI-7810_T_LASER               : num [1:132] 40.12 40.12 40.12 40.12 40.12 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:132] 0.003385 0.003385 0.003382 0.003377 0.003379 ..
        .. ..$ LI-7810_RING_DOWN             : num [1:132] 12.73 12.73 12.73 12.73 12.73 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:132] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:132] 57.75 -58.25 19.5 -8 33.5 -46.75 28.25 -33.5 ..
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:132] 0.3844 0.3844 0.3844 0.3844 0.3844 ...
        .. ..$ LI-7810_VIN                   : num [1:132] 24.19 24.19 24.19 24.19 24.19 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:132] 22.32 22.31 22.31 22.31 22.31 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:132] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:132] 40.07 40.07 40.07 40.07 40.07 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:132] 47.79 47.78 47.78 47.78 47.79 ...
        .. ..$ LI-7820_T_LASER               : num [1:132] 31.08 31.08 31.08 31.08 31.08 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:132] 0.002108 0.002099 0.002102 0.0021 0.002097 0...
        .. ..$ LI-7820_RING_DOWN             : num [1:132] 41.8 41.8 41.8 41.8 41.8 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:132] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:132] -26.9 -32.9 4.1 11.1 -5.1 -19.1 -3.5 40.7 6.4..
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:132] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:132] 24.14 24.14 24.14 24.14 24.14 ...
        .. ..$ CHAMBER_TA                    : num [1:132] 19.76 19.75 19.76 19.75 19.74 19.72 19.7 19.6..
        .. ..$ CHAMBER_TB                    : num [1:132] 22.98 22.97 22.97 22.97 22.98 22.97 22.97 22...
        .. ..$ CHAMBER_VIN                   : num [1:132] 23.4 23.19 23.03 22.87 22.9 22.98 22.96 22.98..
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:132] 0 0.39 0.4 0.47 0.32 0.2 0.28 0.24 0.28 0.29 ..
        .. ..$ CHAMBER_STATE                 : num [1:132] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:132] 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 ...
        .. ..$ CHAMBER_TS_1                  : num [1:132] 23.3 23.3 23.3 23.3 23.3 23.3 23.3 23.3 23.3 ..
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:132], format: "2024-07-25 00:36:18" "2024-07-2"..
        .. ..$ LI-8250_DOY                   : num [1:132] 207 207 207 207 207 ...
        .. ..$ 8250-01_T_CASE                : num [1:132] 25.65 25.66 25.66 25.66 25.66 25.65 25.65 25...
        .. ..$ 8250-01_PUMP_TIME             : num [1:132] 5712 5712 5712 5712 5712 ...
        .. ..$ 8250-01_PUMP_SETPOINT         : num [1:132] 165 165 165 165 165 165 165 165 165 165 ...
        .. ..$ 8250-01_PUMP_CURRENT          : num [1:132] 0.385 0.38 0.382 0.387 0.385 0.385 0.381 0.38..
        .. ..$ 8250-01_PORT1_CURRENT         : num [1:132] 0.018 0.017 0.017 0.018 0.019 0.016 0.017 0.0..
        .. ..$ 8250-01_PORT2_CURRENT         : num [1:132] 0.017 0.016 0.015 0.015 0.018 0.015 0.016 0.0..
        .. ..$ 8250-01_PORT3_CURRENT         : num [1:132] 0.019 0.025 0.095 0.151 0.193 0.159 0.153 0.1..
        .. ..$ 8250-01_PORT4_CURRENT         : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT5_CURRENT         : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT6_CURRENT         : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT7_CURRENT         : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_PORT8_CURRENT         : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ 8250-01_SOL_CURRENT           : num [1:132] 0.184 0.184 0.184 0.184 0.184 0.184 0.184 0.1..
        .. ..$ 8250-01_VIN                   : num [1:132] 23.59 23.58 23.45 23.36 23.3 ...
        .. ..$ 8250-01_12VDC_VOLTAGE         : num [1:132] 12.11 12.11 12.11 12.1 12.1 ...
        .. ..$ 8250-01_5VDC_VOLTAGE          : num [1:132] 4.98 4.98 4.98 4.982 4.982 4.98 4.982 4.982 4..
        .. ..$ 8250-01_3.3VDC_VOLTAGE        : num [1:132] 3.303 3.303 3.303 3.303 3.303 3.303 3.303 3.3..
        .. ..$ 8250-01_DIAG                  : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_DIAG                  : num [1:132] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:132] 21946 21945 21947 21946 21947 ...
        .. ..$ LI-7825_C12                   : num [1:132] 869.5 868 867.5 868.2 867.5 ...
        .. ..$ LI-7825_C13                   : num [1:132] 9.617 9.6 9.595 9.603 9.595 ...
        .. ..$ LI-7825_O17                   : num [1:132] 0.7009 0.7004 0.6986 0.6992 0.6994 ...
        .. ..$ LI-7825_O18                   : num [1:132] 3.66 3.652 3.651 3.654 3.651 ...
        .. ..$ LI-7825_NH3                   : num [1:132] -17.67 -17.56 -17.97 -17.33 -17.37 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:132] -15.83 -15.73 -15.71 -15.7 -15.73 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:132] 20.15 21.73 18.95 19.05 20.24 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:132] 7.678 7.79 7.508 7.553 7.587 ...
        .. .. [list output truncated]
       $ units                                  :List of 7
        ..$ : tibble [88 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:88] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:88] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [89 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:89] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:89] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [88 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:88] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:88] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [88 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:88] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:88] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [106 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:106] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:106] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [106 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:106] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:106] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
        ..$ : tibble [106 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:106] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:106] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
       $ CHAMBER_AREA_cm+2                      : num [1:7] 317.8 317.8 317.8 317.8 317.8 ...
       $ CHAMBER_COLLAR_HEIGHT_cm               : num [1:7] 5 5 5 5 5 5 5
       $ CHAMBER_LATITUDE_degrees               : num [1:7] 40.86 40.86 40.86 40.86 40.86 ...
       $ CHAMBER_LONGITUDE_degrees              : num [1:7] -96.65 -96.65 -96.65 -96.65 -96.65 ...
       $ CHAMBER_PARK_POSITION_degrees          : num [1:7] 180 180 180 180 180 180 180
       $ CHAMBER_TUBE_LENGTH_cm                 : num [1:7] 1500 1500 1500 1500 1500 1500 1500
       $ CHAMBER_VOLUME_cm+3                    : num [1:7] 4076 4076 4076 4076 4076 ...
       $ LI-7810_TUBE_LENGTH_cm                 : num [1:7] 200 200 200 200 200 200 200
       $ LI-7810_VOLUME_cm+3                    : num [1:7] 28 28 28 28 28 28 28
       $ LI-7820_TUBE_LENGTH_cm                 : num [1:7] 200 200 200 200 200 200 200
       $ LI-7820_VOLUME_cm+3                    : num [1:7] 28 28 28 28 28 28 28
       $ LI-7825_TUBE_LENGTH_cm                 : num [1:7] 120 120 120 120 120 120 120
       $ LI-7825_VOLUME_cm+3                    : num [1:7] 28 28 28 28 28 28 28
       $ LI-8250_LATITUDE_degrees               : num [1:7] 40.86 40.86 40.86 40.86 40.86 ...
       $ LI-8250_LONGITUDE_degrees              : num [1:7] -96.65 -96.65 -96.65 -96.65 -96.65 ...
       $ LI-8250_VOLUME_cm+3                    : num [1:7] 35 35 35 35 35 35 35
       $ METADATA_OBSERVATION_s                 : num [1:7] 120 120 120 300 120 300 120
       $ METADATA_POSTPURGE_s                   : num [1:7] 60 60 60 60 60 60 60
       $ METADATA_PREPURGE_s                    : num [1:7] 60 60 60 60 60 60 60
       $ METADATA_TIMESTAMP_START_YYYYMMDDHHMMSS: num [1:7] 2.024e+13 2.024e+13 2.024e+13 2.024e+13 2.02..
       $ METADATA_VOLUME_TOTAL_cm+3             : num [1:7] 6103 6103 6103 6103 6368 ...
       $ CHAMBER_FIRMWARE                       : chr [1:7] "1.1.10" "1.1.10" "1.1.10" "1.1.10" ...
       $ CHAMBER_SERIAL_NUMBER                  : chr [1:7] "82L-0101" "82L-0185" "82L-0186" "82L-0187" ..
       $ LI-7810_FIRMWARE                       : chr [1:7] "2.3.8" "2.3.8" "2.3.8" "2.3.8" ...
       $ LI-7810_SERIAL_NUMBER                  : chr [1:7] "tg10-01104" "tg10-01104" "tg10-01104" "tg1"..
       $ LI-7820_FIRMWARE                       : chr [1:7] "2.4.47" "2.4.47" "2.4.47" "2.4.47" ...
       $ LI-7820_SERIAL_NUMBER                  : chr [1:7] "tg20-proto15" "tg20-proto15" "tg20-proto15"..
       $ LI-7825_FIRMWARE                       : chr [1:7] "2.4.47" "2.4.47" "2.4.47" "2.4.47" ...
       $ LI-7825_SERIAL_NUMBER                  : chr [1:7] "TG25-01015" "TG25-01015" "TG25-01015" "TG2"..
       $ LI-8250_FIRMWARE                       : chr [1:7] "2.1.4" "2.1.4" "2.1.4" "2.1.4" ...
       $ LI-8250_PORT                           : chr [1:7] "1" "2" "3" "5" ...
       $ LI-8250_PORT_LABEL                     : chr [1:7] "    " "    " "    " "soya residue" ...
       $ LI-8250_SERIAL_NUMBER                  : chr [1:7] "82m-0109" "82m-0109" "82m-0109" "82m-0109" ..
       $ METADATA_HORIZONTAL                    : chr [1:7] "1" "1" "1" "1" ...
       $ METADATA_VERTICAL                      : chr [1:7] "1" "1" "1" "1" ...
       $ 8250-01_TUBE_LENGTH_cm                 : num [1:7] NA NA NA NA 1500 1500 1500
       $ 8250-01_VOLUME_cm+3                    : num [1:7] NA NA NA NA 27.9 ...
       $ 8250-01_FIRMWARE                       : chr [1:7] NA NA NA NA ...
       $ 8250-01_PORT                           : chr [1:7] NA NA NA NA ...
       $ 8250-01_PORT_LABEL                     : chr [1:7] NA NA NA NA ...
       $ 8250-01_SERIAL_NUMBER                  : chr [1:7] NA NA NA NA ...
       - attr(*, "file_type")= chr "82z"

# licoread manual file_type 82z

    Code
      licoread(location = test_path("mixed_files"), file_type = "82z")
    Output
      # A tibble: 5 x 44
        f_fluxid          data     units    `CHAMBER_AREA_cm+2` CHAMBER_COLLAR_HEIGH~1
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
      # A tibble: 25 x 49
         `LI-8100`     `File Name` `Instrument Name` `Serial Number` Software Comments
         <chr>         <chr>       <chr>             <chr>           <chr>    <lgl>   
       1 "1b1\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       2 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       3 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       4 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       5 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       6 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       7 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       8 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
       9 "1c5\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
      10 "1c6\t      ~ 10-28-2011  81A-0107          81A-0107        4.0.0b   NA      
      # i 15 more rows
      # i 43 more variables: `Obs#` <int>, `Port#` <int>, Label <chr>,
      #   `Observation Length` <chr>, `Pre-purge` <chr>, `Post-purge` <chr>,
      #   `IRGA Averaging` <int>, Chamber <int>, TSource <chr>, Flow8100 <int>,
      #   Virga <dbl>, Vext <dbl>, Vcham <dbl>, Offset <dbl>, Area <dbl>,
      #   Vtotal <dbl>, `V4 Info` <chr>, `T4 Info` <chr>, Labels_01 <int>,
      #   CrvFitStatus <chr>, Exp_Flux <dbl>, Exp_FluxCV <dbl>, ...

