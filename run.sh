#!/bin/bash

# Run each step in turn.
bin/get_file.sh && bin/csv.sh && bin/api.sh && bin/upload.sh
