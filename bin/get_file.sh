#!/bin/bash

# Get the current filename from the USGS download page.
FILENAME=$(curl -s https://geonames.usgs.gov/domestic/download_data.htm |egrep -o "\/docs\/federalcodes\/NationalFedCodes_[0-9]{8}.zip")

# Put together the URL for the file
URL=https://geonames.usgs.gov"$FILENAME"

echo Retreiving "$URL"

# Get the file.
curl -s "$URL" -o NationalFedCodes.zip

# Extract the file's contents.
unzip -p NationalFedCodes.zip > NationalFedCodes.txt

# Get rid of the ZIP file.
rm NationalFedCodes.zip
