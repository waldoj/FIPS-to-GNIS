#/bin/bash
echo "GNIS_ID,FIPS_CODE" > united-states.csv
sed 1d NationalFedCodes.txt | cut -d "|" -f 1,4  >> united-states.csv
sed -i -e "s/|/,/g" ./united-states.csv
