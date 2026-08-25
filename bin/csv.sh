#!/bin/bash

# Import variables
source config.sh

echo "Creating CSV file"

# Create the headers for the CSV file.
echo "GNIS_ID,FIPS_CODE" > "$CSV_FILE"

# Skip the first line, pipe the 1st and 4th columns into the CSV file.
awk -F'|' 'NF>=21 && $1+0>0 {print $1","$4}' "$SOURCE_FILE" >> "$CSV_FILE"

# Turn every pipe symbol into a comma.
sed -i -e "s/|/,/g" "$CSV_FILE"
