#!/usr/bin/env bash
# API documentation: https://github.com/uWaterloo/api-documentation/blob/master/README.md
echo "Please input your API Key: "
read UW_API_KEY

# Space-deliminated array of product IDs -> get the IDs from parsing the menus
product_ids=( 1966 1512 742 790 )
echo "Product IDs: "
echo product_ids

# Iterate over the product IDs
for i in "${product_ids[@]}"; do
    	printf "product%s.json https://api.uwaterloo.ca/v2/foodservices/products/%s.json?key=%s\n"\
    	$i $i $UW_API_KEY
done | xargs -t -n2 -P4 wget -O