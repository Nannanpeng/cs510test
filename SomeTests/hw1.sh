#!/bin/bash

File=${1:?porvide a file}
x="$(grep -n "Frame,Fx" $File | cut -d : -f 1)"
y="$(grep -n "Frame,X" $File | cut -d : -f 1)"
let z=$y-$x-1

grep -A $z "Frame,Fx" $File > NW1-1.csv
grep -A 5000000 "Frame,X" $File > NW1-2.csv

echo Generate two separate files...
