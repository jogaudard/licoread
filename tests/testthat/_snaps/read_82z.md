# can read one file

    Code
      str(oneobs_82z(filepath = test_path("test82z/82m-0109-20240725000057.82z"),
      data_file = "data.csv", meta_file = "metadata.json", regex_file = "(\\w*-)*\\w*(?=([.]82z$))"))
    Output
      tibble [1 x 38] (S3: tbl_df/tbl/data.frame)
       $ f_fluxid                               : chr "82m-0109-20240725000057"
       $ data                                   :List of 1
        ..$ : tibble [131 x 85] (S3: tbl_df/tbl/data.frame)
        .. ..$ LI-8250_DATE                  : num [1:131] 20240725 20240725 20240725 20240725 20240725 ...
        .. ..$ LI-8250_TIME                  : num [1:131] 58 59 100 101 102 103 104 105 106 107 ...
        .. ..$ LI-8250_T_CASE                : num [1:131] 32.8 32.8 32.8 32.8 32.8 ...
        .. ..$ LI-8250_PA                    : num [1:131] 98.1 98.1 98.1 98.1 98.1 ...
        .. ..$ LI-8250_T_PA                  : num [1:131] 34.1 34.1 34.1 34.1 34.1 ...
        .. ..$ LI-8250_PUMP_POSITIVE_PRESSURE: num [1:131] 27 27.1 27 27.2 27.3 ...
        .. ..$ LI-8250_PUMP_NEGATIVE_PRESSURE: num [1:131] -15 -15 -15 -15 -15 ...
        .. ..$ LI-8250_FLOW                  : num [1:131] 2.94 2.94 2.94 2.94 2.94 ...
        .. ..$ LI-8250_PUMP_TIME             : num [1:131] 6312 6312 6312 6312 6312 ...
        .. ..$ LI-8250_PUMP_SETPOINT         : num [1:131] 255 255 255 255 255 255 255 255 255 255 ...
        .. ..$ LI-8250_PUMP_CURRENT          : num [1:131] 0.595 0.593 0.591 0.549 0.569 ...
        .. ..$ LI-8250_SUB_PRESSURE          : num [1:131] 0.0351 0.0455 0.0272 0.0604 0.0525 ...
        .. ..$ LI-8250_SUB_FLOW              : num [1:131] 1.67 1.66 1.65 1.66 1.67 ...
        .. ..$ LI-8250_VSO_FLOW_SETPOINT     : num [1:131] 96 96 96 96 96 96 96 96 96 96 ...
        .. ..$ LI-8250_VSO_PRESSURE_SETPOINT : num [1:131] 103 103 103 103 103 103 103 103 103 103 ...
        .. ..$ LI-8250_PORT1_CURRENT         : num [1:131] 0.0502 0.1277 0.1956 0.2325 0.139 ...
        .. ..$ LI-8250_PORT2_CURRENT         : num [1:131] 0.0158 0.0156 0.0199 0.016 0.0155 ...
        .. ..$ LI-8250_PORT3_CURRENT         : num [1:131] 0.018 0.0156 0.0142 0.0151 0.0146 ...
        .. ..$ LI-8250_PORT4_CURRENT         : num [1:131] 0.000399 0 0.00012 0.00004 0.000359 0.000199 0.00012 0 0.000199 0.000239 ...
        .. ..$ LI-8250_PORT5_CURRENT         : num [1:131] 0.0165 0.0198 0.0168 0.0162 0.0153 ...
        .. ..$ LI-8250_PORT6_CURRENT         : num [1:131] 0.0155 0.0152 0.0184 0.017 0.0174 ...
        .. ..$ LI-8250_PORT7_CURRENT         : num [1:131] 0.0876 0.0902 0.0879 0.091 0.0927 ...
        .. ..$ LI-8250_PORT8_CURRENT         : num [1:131] 0.002035 0.000519 0.000957 0.000798 0.001596 ...
        .. ..$ LI-8250_SOL_CURRENT           : num [1:131] 0.234 0.234 0.234 0.234 0.234 ...
        .. ..$ LI-8250_12VDC_CURRENT         : num [1:131] 0.00012 0 0.000439 0 0.000239 0.00012 0.00008 0.00012 0.00012 0.00008 ...
        .. ..$ LI-8250_VIN                   : num [1:131] 11.7 11.7 11.7 11.7 11.7 ...
        .. ..$ LI-8250_VOUT                  : num [1:131] 24.1 24.2 24.2 24.2 24.1 ...
        .. ..$ LI-8250_VSO_FLOW              : num [1:131] 4.46 4.46 4.46 4.47 4.47 ...
        .. ..$ LI-8250_VSO_PRESSURE          : num [1:131] 4.49 4.49 4.49 4.49 4.49 ...
        .. ..$ LI-8250_5V_VOLTAGE            : num [1:131] 5.02 5.02 5.01 5.01 5.02 ...
        .. ..$ LI-8250_12V_VOLTAGE           : num [1:131] 12.1 12.1 12.1 12.1 12.1 ...
        .. ..$ LI-8250_FLOW_PRESSURE         : num [1:131] 4.58 4.6 4.59 4.58 4.6 ...
        .. ..$ LI-8250_SUB_FLOW_PRESSURE     : num [1:131] 1.87 1.84 1.82 1.83 1.87 ...
        .. ..$ LI-8250_LATITUDE              : num [1:131] 40.9 40.9 40.9 40.9 40.9 ...
        .. ..$ LI-8250_LONGITUDE             : num [1:131] -96.7 -96.7 -96.7 -96.7 -96.7 ...
        .. ..$ LI-8250_SATELLITES            : num [1:131] 18 18 18 18 18 18 18 18 18 18 ...
        .. ..$ LI-8250_ALTITUDE              : num [1:131] 351 351 351 351 351 ...
        .. ..$ LI-7810_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7810_H2O                   : num [1:131] 22.1 22.1 22.1 22.1 22.1 ...
        .. ..$ LI-7810_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7810_PA_CAVITY             : num [1:131] 40.3 40.3 40.3 40.3 40.3 ...
        .. ..$ LI-7810_PA_LASER_PHASE        : num [1:131] 35.7 35.7 35.7 35.7 35.7 ...
        .. ..$ LI-7810_T_LASER               : num [1:131] 40.1 40.1 40.1 40.1 40.1 ...
        .. ..$ LI-7810_RESIDUAL              : num [1:131] 0.00329 0.00328 0.00329 0.00328 0.00328 ...
        .. ..$ LI-7810_RING_DOWN             : num [1:131] 12.7 12.7 12.7 12.7 12.7 ...
        .. ..$ LI-7810_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7810_PHASE_ERROR           : num [1:131] 21.2 -25.5 -20 11.8 5.5 ...
        .. ..$ LI-7810_T_LASER_SHIFT         : num [1:131] 0.384 0.384 0.384 0.384 0.384 ...
        .. ..$ LI-7810_VIN                   : num [1:131] 24.2 24.2 24.2 24.2 24.2 ...
        .. ..$ LI-7820_DIAGNOSTIC            : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7820_H2O                   : num [1:131] 21.8 21.8 21.8 21.8 21.8 ...
        .. ..$ LI-7820_T_CAVITY              : num [1:131] 55 55 55 55 55 ...
        .. ..$ LI-7820_PA_CAVITY             : num [1:131] 40.1 40.1 40.1 40.1 40.1 ...
        .. ..$ LI-7820_PA_LASER_PHASE        : num [1:131] 47.8 47.8 47.8 47.8 47.8 ...
        .. ..$ LI-7820_T_LASER               : num [1:131] 31.1 31.1 31.1 31.1 31.1 ...
        .. ..$ LI-7820_RESIDUAL              : num [1:131] 0.00213 0.00213 0.00213 0.00213 0.00213 ...
        .. ..$ LI-7820_RING_DOWN             : num [1:131] 41.8 41.8 41.8 41.8 41.8 ...
        .. ..$ LI-7820_T_THERMAL_ENCLOSURE   : num [1:131] 54.5 54.5 54.5 54.5 54.5 ...
        .. ..$ LI-7820_PHASE_ERROR           : num [1:131] -42.1 -28.5 -7.4 11.4 17.3 -32.3 2.1 11 9.9 -23.6 ...
        .. ..$ LI-7820_T_LASER_SHIFT         : num [1:131] -0.139 -0.139 -0.139 -0.139 -0.139 ...
        .. ..$ LI-7820_VIN                   : num [1:131] 24.1 24.1 24.1 24.1 24.1 ...
        .. ..$ CHAMBER_TA                    : num [1:131] 20.3 20.3 20.3 20.3 20.3 ...
        .. ..$ CHAMBER_TB                    : num [1:131] 23.7 23.7 23.7 23.7 23.7 ...
        .. ..$ CHAMBER_VIN                   : num [1:131] 24.1 23.9 23.8 23.7 23.8 ...
        .. ..$ CHAMBER_MOTOR_CURRENT         : num [1:131] 0.21 0.38 0.54 0.45 0.27 0.29 0.25 0.3 0.24 0.15 ...
        .. ..$ CHAMBER_STATE                 : num [1:131] 1 1 1 1 1 1 1 1 1 1 ...
        .. ..$ CHAMBER_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ CHAMBER_SWC_1                 : num [1:131] 0.246 0.246 0.246 0.246 0.246 0.246 0.246 0.246 0.246 0.246 ...
        .. ..$ CHAMBER_TS_1                  : num [1:131] 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 23.5 ...
        .. ..$ LI-8250_DATE_TIME             : POSIXct[1:131], format: "2024-07-25 00:00:58" "2024-07-25 00:00:59" ...
        .. ..$ LI-8250_DOY                   : num [1:131] 207 207 207 207 207 ...
        .. ..$ LI-7825_DIAG                  : num [1:131] 0 0 0 0 0 0 0 0 0 0 ...
        .. ..$ LI-7825_H2O                   : num [1:131] 21389 21387 21390 21390 21392 ...
        .. ..$ LI-7825_C12                   : num [1:131] 821 824 823 824 832 ...
        .. ..$ LI-7825_C13                   : num [1:131] 9.09 9.13 9.12 9.13 9.22 ...
        .. ..$ LI-7825_O17                   : num [1:131] 0.661 0.662 0.664 0.662 0.668 ...
        .. ..$ LI-7825_O18                   : num [1:131] 3.46 3.47 3.47 3.47 3.5 ...
        .. ..$ LI-7825_NH3                   : num [1:131] -17.2 -17.5 -17 -16.6 -16.9 ...
        .. ..$ LI-7825_C13_DELTA             : num [1:131] -13.8 -13.9 -14 -13.7 -13.5 ...
        .. ..$ LI-7825_O17_DELTA             : num [1:131] 18.5 17.8 20.6 16.3 15.3 ...
        .. ..$ LI-7825_O18_DELTA             : num [1:131] 8.21 8.03 7.98 8.47 8.41 ...
        .. ..$ LI-7825_PHASE_ERROR           : num [1:131] -15.25 43.25 26.25 17.75 -1.75 ...
        .. ..$ LI-7825_LASER_T_SHIFT         : num [1:131] -0.116 -0.116 -0.116 -0.116 -0.116 ...
        .. ..$ LI-7825_INPUT_VOLTAGE         : num [1:131] 24.2 24.2 24.2 24.2 24.2 ...
        .. ..$ gas_f_conc                    :List of 131
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 831 357 834
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 839 357 837
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 845 357 837
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 850 357 837
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 852 357 845
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 855 357 851
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 859 357 855
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 864 357 858
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004 867 358 861
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3005 868 357 865
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3005 871 357 871
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004 873 357 874
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004 875 357 876
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3004 877 357 877
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 881 358 879
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 882 357 882
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 883 358 884
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 882 358 888
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 884 357 889
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 888 358 890
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 893 357 889
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 896 357 890
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 899 357 895
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 902 358 899
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 905 357 904
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 907 358 905
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 909 357 908
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 912 358 911
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 914 357 913
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 916 358 916
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 917 357 918
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 918 358 920
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 921 357 922
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 927 358 923
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 932 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 936 358 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 940 358 933
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 942 358 938
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 943 358 942
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 940 358 945
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 938 358 947
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 936 358 948
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 932 358 947
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 929 358 945
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 925 358 943
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 922 358 940
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2997 921 358 936
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 920 357 932
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 920 358 929
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 921 357 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 921 358 927
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2998 921 358 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 920 358 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 919 358 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 918 357 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 918 358 927
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 917 358 926
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 2999 917 358 925
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 917 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 917 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 917 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 918 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 919 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 920 358 924
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 921 357 925
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 922 358 926
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 923 357 927
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 924 358 928
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 925 357 929
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 925 358 930
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 926 357 930
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 927 358 931
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 928 358 932
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 928 358 933
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 929 358 934
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 931 358 934
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 932 358 935
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 933 357 936
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 934 358 937
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 936 358 938
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 936 358 940
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 938 358 941
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 939 358 942
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 944 358 943
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 945 358 944
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 943 358 945
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3000 944 358 950
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 944 358 953
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3001 950 358 950
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 972 358 951
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 995 358 951
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 999 358 953
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 994 358 974
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 983 358 999
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 975 358 1005
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 994 358 1000
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3003 1009 358 992
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 999 358 980
        .. .. ..$ : tibble [4 x 2] (S3: tbl_df/tbl/data.frame)
        .. .. .. ..$ gas   : chr [1:4] "LI-7810_CH4_DRY" "LI-7810_CO2_DRY" "LI-7820_N2O_DRY" "LI-7825_CO2"
        .. .. .. ..$ f_conc: num [1:4] 3002 998 358 996
        .. .. .. [list output truncated]
       $ units                                  :List of 1
        ..$ : tibble [88 x 2] (S3: tbl_df/tbl/data.frame)
        .. ..$ variable: chr [1:88] "LI-8250_DATE" "LI-8250_TIME" "LI-8250_T_CASE" "LI-8250_PA" ...
        .. ..$ unit    : chr [1:88] "[YYYYMMDD]" "[HHMMSS]" "[C]" "[kPa]" ...
       $ CHAMBER_AREA_cm+2                      : num 318
       $ CHAMBER_COLLAR_HEIGHT_cm               : num 5
       $ CHAMBER_LATITUDE_degrees               : num 40.9
       $ CHAMBER_LONGITUDE_degrees              : num -96.7
       $ CHAMBER_PARK_POSITION_degrees          : num 180
       $ CHAMBER_TUBE_LENGTH_cm                 : num 1500
       $ CHAMBER_VOLUME_cm+3                    : num 4076
       $ LI-7810_TUBE_LENGTH_cm                 : num 200
       $ LI-7810_VOLUME_cm+3                    : num 28
       $ LI-7820_TUBE_LENGTH_cm                 : num 200
       $ LI-7820_VOLUME_cm+3                    : num 28
       $ LI-7825_TUBE_LENGTH_cm                 : num 120
       $ LI-7825_VOLUME_cm+3                    : num 28
       $ LI-8250_LATITUDE_degrees               : num 40.9
       $ LI-8250_LONGITUDE_degrees              : num -96.7
       $ LI-8250_VOLUME_cm+3                    : num 35
       $ METADATA_OBSERVATION_s                 : num 120
       $ METADATA_POSTPURGE_s                   : num 60
       $ METADATA_PREPURGE_s                    : num 60
       $ METADATA_TIMESTAMP_START_YYYYMMDDHHMMSS: num 2.02e+13
       $ METADATA_VOLUME_TOTAL_cm+3             : num 6103
       $ CHAMBER_FIRMWARE                       : chr "1.1.10"
       $ CHAMBER_SERIAL_NUMBER                  : chr "82L-0101"
       $ LI-7810_FIRMWARE                       : chr "2.3.8"
       $ LI-7810_SERIAL_NUMBER                  : chr "tg10-01104"
       $ LI-7820_FIRMWARE                       : chr "2.4.47"
       $ LI-7820_SERIAL_NUMBER                  : chr "tg20-proto15"
       $ LI-7825_FIRMWARE                       : chr "2.4.47"
       $ LI-7825_SERIAL_NUMBER                  : chr "TG25-01015"
       $ LI-8250_FIRMWARE                       : chr "2.1.4"
       $ LI-8250_PORT                           : chr "1"
       $ LI-8250_PORT_LABEL                     : chr "    "
       $ LI-8250_SERIAL_NUMBER                  : chr "82m-0109"
       $ METADATA_HORIZONTAL                    : chr "1"
       $ METADATA_VERTICAL                      : chr "1"

