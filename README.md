# FIPS to GNIS Conversion

A list of every FIPS code (Census Code) and its corresponding GNIS ID. This is nothing but a long CSV file, listing only the IDs. This includes every FIPS code—not every GNIS ID—and is derived from [`NationalFedCodes_20140601.zip`](http://geonames.usgs.gov/docs/federalcodes/NationalFedCodes_20140601.zip) at the U.S. Board of Geographic Names' website. It's simply that file, with all data stripped out other than our two fields.

## Query the API

This data is available via an API, in the format `https://fipsgnis.com/FIPSCODE.json`, e.g. a query for for New York, New York, to [`https://fipsgnis.com/410494.json`](https://fipsgnis.com/410494.json), returns the following:

```json
{
  "fips": "410494",
  "gnis": "36061"
}
```

The API consists of static files hosted on S3, provided via CloudFront, so there's no need to be gentle—query all you need, at whatever rate you need. But if you prefer something local and faster, you can generate your own copy.

## Generate Your Own CSV

You can generate your own, more up-to-date version of this.

1. Clone or download this repository.
2. Edit the included `run.sh` script to remove everything after `csv.sh`.
3. Run `run.sh` (`./run.sh`).

## Generate Your Own API

Make your own API.

1. Clone or download this repository.
2. Have `awscli` installed and configured on your system (to write files to S3). Alternately, edit `run.sh` to erase everything after `api.sh` and upload the resulting files wherever you care to host your API.
3. Run `run.sh` (`./run.sh`).
