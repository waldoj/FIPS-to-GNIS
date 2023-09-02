#!/bin/bash

# Import variables
source config.sh

echo "Syncing files with S3"

# Sync all recent changes
cd "$OUTPUT_DIR" || exit
aws s3 sync . s3://"$BUCKET"
