#!/usr/bin/env bash
# API documentation: https://github.com/uWaterloo/api-documentation/blob/master/README.md
echo "Please input your API Key: "
read UW_API_KEY

# Iterate over year
for i in $(seq -w 2007 2008); do
	# Iterate over week
	for j in $(seq -w 1 52); do
    	printf "%s-w%s-menu.json https://api.uwaterloo.ca/v2/foodservices/%s/%s/menu.json?key=%s\n"\
    	$i $j $i $j $UW_API_KEY
	done 
done | xargs -t -n2 -P4 wget -O