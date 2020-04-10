# NYT Covid-19 Data, but in JSON format

This fork of [nytimes/covid-19-data](https://github.com/nytimes/covid-19-data)
provides their data in json.

## Usage
Utilities are provided for automation.

Refresh the source data from NYT's repo:

    make csv

Convert to json:

    make json

outputs these files:

    us-states.json
    us-states.json.tar.gz


## Example

The source data is provided at state and county levels.

```javascript
{
  "data": [
    {
      "date": "2020-01-21",
      "state": "Washington",
      "fips": 53,
      "cases": 1,
      "deaths": 0
    },
    {
      "date": "2020-01-22",
      "state": "Washington",
      "fips": 53,
      "cases": 1,
      "deaths": 0
    }, ...
```

## Roadmap

- Add database support
- Add additional data sources from around the globe
- Provide an API for querying data
- Add graph support
- Add dashboard
