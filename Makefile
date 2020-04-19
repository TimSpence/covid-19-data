all: csv json

csv:
	bin/fetch_csv counties states

counties:
	bin/csv2json counties

json: counties states

states:
	bin/process_states

.PHONY: all csv json
