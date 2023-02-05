#! /bin/bash

for fn in $(ls *.tsv) ; do
  BN=$(basename "$fn" | cut -d. -f1)
  sed -i -E "1{s/read count/${BN}/}" "$fn"
done ;
