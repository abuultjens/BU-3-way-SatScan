# BU-3-way-SatScan

```  
seq 1 10000 > seq_1-10000.txt 
  
# run SatScan analyses  
sh satscan_runner.sh seq_1-10000.txt 
  
# determine overlap occurrences  
sh shp_comp.sh seq_1-10000.txt 
  
# count number of overlapps  
grep -v ",0" *_COUNT.csv | wc -l  
