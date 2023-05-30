#!/bin/bash

MIN=$1
MAX=$2
TMP=$(mktemp)
for i in $(seq $MIN $MAX)
do
    for j in $(seq $i $MAX)
    do
       echo \\op{$i}{$j} >> $TMP
    done
done
sort -Ro $TMP $TMP
sed -i "/% insert here/ r $TMP" $3

