#!/bin/bash

# The URL for the data file
URL=https://prd-tnm.s3.amazonaws.com/StagedProducts/GeographicNames/FederalCodes/FedCodes_AllStates_Text.zip

echo Retreiving "$URL"

# Get the file.
curl -s "$URL" -o NationalFedCodes.zip

# Extract the file's contents.
unzip -p NationalFedCodes.zip > NationalFedCodes.txt

# Get rid of the ZIP file.
rm NationalFedCodes.zip
