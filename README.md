# FIPS to GNIS Conversion

A list of every GNIS feature ID and its corresponding FIPS code (Census code). This is nothing but a long CSV file, listing only the IDs. It's derived from [the USGS Federal Codes file](https://prd-tnm.s3.amazonaws.com/StagedProducts/GeographicNames/FederalCodes/FedCodes_AllStates_Text.zip), published by the U.S. Board on Geographic Names—simply that file, with all data stripped out other than our two fields.

## Query the API

This data is available via an API, in the format `https://fipsgnis.com/GNISID.json`. For example, a query for Hoopeston, Illinois (GNIS feature ID 410494), to [`https://fipsgnis.com/410494.json`](https://fipsgnis.com/410494.json), returns the following:

```json
{
  "gnis": "410494",
  "fips": "36061"
}
```

The API consists of static files hosted on S3, provided via CloudFront, so there's no need to be gentle—query all you need, at whatever rate you need. But if you prefer something local and faster, you can generate your own copy.

It's only possible to query by GNIS feature ID, not by FIPS code. Reversing it requires namespacing the files, because 3,140 GNIS IDs are also valid FIPS codes and would collide. [That's planned](https://github.com/waldoj/FIPS-to-GNIS/issues/3).

## Generate Your Own CSV

You can generate your own copy of this.

1. Clone or download this repository.
2. Edit the included `run.sh` script to remove everything after `csv.sh`.
3. Run `run.sh` (`./run.sh`).

## Generate Your Own API

Make your own API.

1. Clone or download this repository.
2. Have `awscli` installed and configured on your system (to write files to S3). Alternately, edit `run.sh` to erase everything after `api.sh` and upload the resulting files wherever you care to host your API.
3. Run `run.sh` (`./run.sh`).
