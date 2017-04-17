#!/usr/bin/env bash
#API documentation: https://github.com/uWaterloo/api-documentation/blob/master/README.md
echo "Please input your API Key: "
read UW_API_KEY
product_ids=( 1966 1512 742 790 ) #space-deliminated array
echo product_ids
for i in "${product_ids[@]}"; do #Need to iterate over product IDs -> get the IDs from parsing the menus
    	printf "product%s.json https://api.uwaterloo.ca/v2/foodservices/products/%s.json?key=%s\n"\
    	$i $i $UW_API_KEY
done | xargs -t -n2 -P4 wget -O