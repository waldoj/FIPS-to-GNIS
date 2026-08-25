#!/bin/bash

# The source CSV file.
SOURCE_DATA=united-states.csv

# Where we want our JSON files to go.
OUTPUT_DIR=./api

# Create the JSON directory.
mkdir -p "$OUTPUT_DIR"

echo "Creating JSON files"

# Iterate through each line in the CSV file. The columns are GNIS_ID,FIPS_CODE,
# so field 1 is the GNIS feature ID (which becomes the filename) and field 2 is
# the Census (FIPS) code.
while IFS=, read -r GNIS_VALUE FIPS_VALUE; do

	# Skip the header row, and any header rows embedded mid-file. (The source
	# data concatenates per-state files, each with its own header.)
	case "$GNIS_VALUE" in
		''|*[!0-9]*) continue ;;
	esac

	OUTPUT_FILE="$OUTPUT_DIR"/"$GNIS_VALUE".json
	echo "{\"gnis\":\"$GNIS_VALUE\",\"fips\":\"$FIPS_VALUE\"}" > "$OUTPUT_FILE"
	echo -n .
done <$SOURCE_DATA
