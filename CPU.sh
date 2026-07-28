#!/bin/bash

model=$(grep -m1 "model name" /proc/cpuinfo | cut -d: -f2-)
echo "CPU Model: $model"
