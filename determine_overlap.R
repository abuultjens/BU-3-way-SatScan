
library("sf")

args <- commandArgs(trailingOnly = TRUE)

PREFIX = toString(args[1])

A_shp <- read_sf(toString(args[2]))
B_shp <- read_sf(toString(args[3]))
C_shp <- read_sf(toString(args[4]))

A_B_intersection <- st_intersection(A_shp, B_shp)
A_B_C_intersection <- st_intersection(C_shp, A_B_intersection)
n_A_B_C = nrow(A_B_C_intersection)

if(n_A_B_C > 0){
VAL=1
} else {
VAL=0
}

write.table(VAL, file = "n_A_B_C.txt", sep = ",", row.names = FALSE, col.names = FALSE)
