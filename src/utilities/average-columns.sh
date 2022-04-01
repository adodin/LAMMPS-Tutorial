#!/bin/bash

f=$1
for i in "${@:2}"
do
	yname=$(head -1 $f|awk "{ print \$$i }")
  echo "${yname}"
	tail +2 $f|awk -v N=$i '{ sum += $N } END { if (NR > 0) print sum / NR }'
done
