#!/bin/bash


for TAXA in $(cat $1); do
#TAXA=$1

	echo "########### ${TAXA} ############"

	Rscript determine_overlap.R \
	RAND_${TAXA} \
	summer_MP_SCAT/RAND_${TAXA}.col.shp \
	177_data_for_SatScan_TRAPS/RAND_${TAXA}.col.shp \
	2023_MP_CASES_01.01.2019-28.12.2020/RAND_${TAXA}.col.shp
	
	n_A_B_C=`cat n_A_B_C.txt`

	echo "${TAXA},${n_A_B_C}" > RAND_${TAXA}_COUNT.csv
	
done

		