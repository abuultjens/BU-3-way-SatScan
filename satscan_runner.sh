#!/bin/bash


#for TAXA in $(cat $1); do
TAXA=$1

WD=summer_MP_SCAT
GEO=summer_geo.geo
PRAM=summer_MP_SCAT.prm

	tr '\t' ',' < ${WD}/${GEO} > ${WD}/${GEO}.csv
	python randomise_target.py \
	${WD}/${GEO}.csv \
	${WD}/RAND_${TAXA}_${GEO}

	./satscan ${WD}/${PRAM} \
	--CoordinatesFile ${WD}/RAND_${TAXA}_${GEO} \
	--ResultsFile ${WD}/RAND_${TAXA}.txt

WD=177_TRAPS_AGAIN
GEO=177_data_for_SatScan_LOCATIONS.geo
PRAM=177_data_for_SatScan_TRAPS.prm

        tr '\t' ',' < ${WD}/${GEO} > ${WD}/${GEO}.csv
        python randomise_target.py \
        ${WD}/${GEO}.csv \
        ${WD}/RAND_${TAXA}_${GEO} 

        ./satscan ${WD}/${PRAM} \
        --CoordinatesFile ${WD}/RAND_${TAXA}_${GEO} \
        --ResultsFile ${WD}/RAND_${TAXA}.txt	

WD=2023_MP_CASES_01.01.2019-28.12.2020
GEO=2023_MP_CASES_01.01.2019-28.12.2020_LOCATIONS.geo
PRAM=2023_MP_CASES_01.01.2019-28.12.2020.prm

        tr '\t' ',' < ${WD}/${GEO} > ${WD}/${GEO}.csv
        python randomise_target.py \
        ${WD}/${GEO}.csv \
        ${WD}/RAND_${TAXA}_${GEO} 

        ./satscan ${WD}/${PRAM} \
        --CoordinatesFile ${WD}/RAND_${TAXA}_${GEO} \
        --ResultsFile ${WD}/RAND_${TAXA}.txt
	
#done

		