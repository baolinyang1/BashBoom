#!/bin/bash
#without n, it prints line by line
sed -n '/Startring_pattern/,/ending_pattern/p' filename
