#!/bin/bash

polygen english.grm | trans -b en:de 2>/dev/null | espeak -s 10 -v mb-de7


