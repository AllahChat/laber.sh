#!/bin/bash

polygen english.grm | sed -e "s/ s /s /g" | sed -e "s/- /-/g" | sed -e "s/ ly /ly /g" | trans -b en:de 2>/dev/null | tee /dev/tty | espeak -s 10 -v mb-de7


