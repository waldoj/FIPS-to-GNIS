#!/bin/bash

# The source CSV file.
SOURCE_DATA=united-states.csv

# Where we want our JSON files to go.
OUTPUT_DIR=./api

# Create the JSON directory.
mkdir -p "$OUTPUT_DIR"

# Iterate through each line in the CSV file.
while read -r p; do
	FIPS_VALUE=$(echo "$p" | cut -d "," -f 1)
	GNIS_VALUE=$(echo "$p" | cut -d "," -f 2)
	OUTPUT_FILE="$OUTPUT_DIR"/"$FIPS_VALUE".json
	echo "{\"fips\":\"$FIPS_VALUE\",\"gnis\":\"$GNIS_VALUE\"}" > "$OUTPUT_FILE"
done <$SOURCE_DATA
