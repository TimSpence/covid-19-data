all: csv json

csv:
	bin/fetch_csv counties states

json:
	bin/csv2json counties states

.PHONY: all csv json
