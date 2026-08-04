#!/bin/bash

url="http://example.com"
output="example.html"
if curl -s -o "$output" "$url"; then
	echo "Downloaded $url to $output"
else
	echo "Failed to download $url"
fi
