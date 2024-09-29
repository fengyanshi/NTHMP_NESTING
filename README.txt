This package includes the matlab scripts used for generating station files and nesting files in the work of NTHMP_2022, flooding maps for Florida Palm beach and Brevard. There're three levels of grids, Grid A (G defined by Stephan's group), Grid B (regional) and Grid C (local Palm and Brevard). 

* folder /make_stations/

AB_mk_station_G_FL.m - make station files for nesting Grid A and B (used for Grid A run).

BC_nk_station_PM_BR.m - make station files for nesting Grid B and C (used for grid B run). This script generates two sets of stations, one is for Brevard, the other for Palm beach. So Grid B only run once to get all stations needed for two Grid Cs. 

* folder /make_coupling_files/

The file name is constructed as Source_Grid2_Grid2.m, for example, Source A1, nesting Grid A and Grid B:

A1_A_B.m - make nesting files for nesting grid A and B (used for Grid B run)

Source A1, nesting Grid B and Grid C:

A1_B_C_BR_PM.m - make nesting files for nesting grid B and C (used for Grid C run).




 

