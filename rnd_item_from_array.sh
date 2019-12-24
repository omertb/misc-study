#!/usr/bin/env bash
# creating array
arr=($(seq 2 2 200))
for i in {0..9}; do
	rnd_num=$(( ( RANDOM % 99 ) + 0 ))
	echo "Array Key Number: $rnd_num"
	echo "Array Item Value: ${arr[$rnd_num]}"
	echo
done
