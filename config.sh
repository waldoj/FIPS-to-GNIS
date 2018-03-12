#!/bin/bash

# The file from the U.S. Board of Geographic Names' website.
SOURCE_FILE=NationalFedCodes.txt

# The CSV file.
CSV_FILE=united-states.csv

# The local directory to store the JSON files.
OUTPUT_DIR=./api

# The S3 bucket where we want to host the JSON files.
BUCKET=fipsgnis.com
