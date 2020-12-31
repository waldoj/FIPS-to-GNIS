#!/bin/bash

# Get the current filename from the USGS download page.
FILENAME=$(curl -s https://www.usgs.gov/core-science-systems/ngp/board-on-geographic-names/download-gnis-data | egrep -o "\/docs\/federalcodes\/NationalFedCodes.zip")

# Put together the URL for the file
URL=https://geonames.usgs.gov"$FILENAME"

echo Retreiving "$URL"

# Get the file.
curl -s "$URL" -o NationalFedCodes.zip

# Extract the file's contents.
unzip -p NationalFedCodes.zip > NationalFedCodes.txt

# Get rid of the ZIP file.
rm NationalFedCodes.zip
