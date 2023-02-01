
library("sf")

args <- commandArgs(trailingOnly = TRUE)

PREFIX = toString(args[1])

A_shp <- read_sf(toString(args[2]))
B_shp <- read_sf(toString(args[3]))
C_shp <- read_sf(toString(args[4]))

#A_shp <- read_sf("winter_plus_HR_MP_SCAT/ACTUAL.col.shp")
#B_shp <- read_sf("177_data_for_SatScan_CASES/ACTUAL.col.shp")
#C_shp <- read_sf("1187_SatScan_CASES/ACTUAL.col.shp")

#A_B_intersection <- st_intersection(A_shp, B_shp)
#A_C_intersection <- st_intersection(A_shp, C_shp)
#B_C_intersection <- st_intersection(B_shp, C_shp)

#n_A_B = nrow(A_B_intersection)
#n_A_C = nrow(A_C_intersection)
#n_B_C = nrow(B_C_intersection)

A_B_intersection <- st_intersection(A_shp, B_shp)
A_B_C_intersection <- st_intersection(C_shp, A_B_intersection)
n_A_B_C = nrow(A_B_C_intersection)

#write.table(n_A_B, file = "n_A_B.txt", sep = ",", row.names = FALSE, col.names = FALSE)
#write.table(n_A_C, file = "n_A_C.txt", sep = ",", row.names = FALSE, col.names = FALSE)
#write.table(n_B_C, file = "n_B_C.txt", sep = ",", row.names = FALSE, col.names = FALSE)
write.table(n_A_B_C, file = "n_A_B_C.txt", sep = ",", row.names = FALSE, col.names = FALSE)