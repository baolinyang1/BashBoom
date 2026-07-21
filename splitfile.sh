#!/bin/bash
lines_per_file=3
file=input.txt

split -l $lines_per_file $file "$input_part__"

echo "split $file into parts, eahc chunk contains $lines_per_file lines"