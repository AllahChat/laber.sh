#!/bin/bash

while [ true ]; do
	polygen english.grm | sed -e "s/ s /s /g" | sed -e "s/- /-/g" | sed -e "s/ ly /ly /g" | tee /dev/tty | trans en:de 2>/dev/null | tail -n 1 | cut -d "." -f 1  |  tee /dev/tty | espeak -s 10 -v mb-de7
	sleep $(( $RANDOM % 60 ))
done

