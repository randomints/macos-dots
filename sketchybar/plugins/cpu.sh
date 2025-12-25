#!/bin/bash

CPU=$(ps -A -o %cpu | awk '{s+=$1} END {printf "%.0f", s}')

sketchybar --push cpu.graph "$CPU"
