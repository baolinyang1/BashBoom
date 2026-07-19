#!/bin/bash

#delete FILES that are more than 7 days old

target_dir="target"
find $target_dir -type f -mtime +7 -print -exec rm -f {} \;