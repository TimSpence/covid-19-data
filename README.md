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

and outputs each state's json under `us-states/`.

## Example

The source data is provided at state and county levels.

```javascript
[
  {
    "date": "2020-01-21",
    "state": "Washington",
    "fips": 53,
    "cases": 1,
    "deaths": 0,
    "new_cases": 1,
    "new_deaths": 0
  },
  {
    "date": "2020-01-22",
    "state": "Washington",
    "fips": 53,
    "cases": 1,
    "deaths": 0,
    "new_cases": 0,
    "new_deaths": 0
  },
```

## Querying

Construct queries with jq.  Example:
```bash
    jq -r \
      '[
      .[]
      | select( .county == "San Francisco" )
      | { date: .date, cases: .cases }
      ]' \
      us-counties.json
```
Output:
```javascript
       ...
      {
        "date": "2020-04-09",
        "cases": "734"
      },
      {
        "date": "2020-04-10",
        "cases": "766"
      }
]
```

## Roadmap

- Add database support
- Add additional data sources from around the globe
- Provide an API for querying data
- Add graph support
- Add dashboard
