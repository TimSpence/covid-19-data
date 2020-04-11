all: csv json

csv:
	bin/fetch_csv counties states

json:
	bin/csv2json

.PHONY: all csv json
