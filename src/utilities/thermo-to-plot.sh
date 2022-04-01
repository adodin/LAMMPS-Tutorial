#!/bin/bash

f=$1
x=$2
xname=$(head -1 $f|awk "{ print \$$x }")
for i in "${@:3}" 
do
	yname=$(head -1 $f|awk "{ print \$$i }")
	tail +2 $f|awk "{print \$$x,\$$i}" > ${xname}.${yname}.$f
done
