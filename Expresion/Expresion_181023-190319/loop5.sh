
#! /bin/bash



for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn" | cut -d. -f1)
  sed -i  -E  "1{s/RPM_adj/${BN}/}" "$fn"
done


 exit
 
 
