#!/bin/bash

# Import variables
source config.sh

echo "Creating CSV file"

# Create the headers for the CSV file.
echo "GNIS_ID,FIPS_CODE" > "$CSV_FILE"

# Skip the first line, pipe the 1st and 4th columns into the CSV file.
sed 1d "$SOURCE_FILE" | cut -d "|" -f 1,4  >> "$CSV_FILE"

# Turn every pipe symbol into a comma.
sed -i -e "s/|/,/g" "$CSV_FILE"
