# BU-3-way-SatScan

```  
# run SatScan analyses  
sh satscan_runner.sh seq_1-500.txt  
  
# determine overlap occurrences  
sh shp_comp.sh seq_1-500.txt  
  
# count number of overlapps  
grep -v ",0" *_COUNT.csv | wc -l  
