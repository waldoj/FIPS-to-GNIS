# FIPS to GNIS Map

A list of every FIPS code (Census Code) and its corresponding GNIS ID. This is nothing but a long CSV file, listing only the IDs. This includes every FIPS code—not every GNIS ID—and is derived from [`NationalFedCodes_20140601.zip`](http://geonames.usgs.gov/docs/federalcodes/NationalFedCodes_20140601.zip) at the U.S. Board of Geographic Names' website. It's simply that file, with all data stripped out other than our two fields.

## Generate Your Own

You can generate your own, more up-to-date version of this.

1. Go to [the U.S. Board of Geographic Names' data download page](https://geonames.usgs.gov/domestic/download_data.htm), scrolling to "State Files with Federal Codes," and selecting the most recent `NationalFedCodes` filename (e.g., `NationalFedCodes_20200601.zip`). Save it, naming it `NationalFedCodes.txt` (no date).
2. Run the include `run.sh` script.
3. The resulting `united-states.csv` script is your own up-to-date version of this file.
