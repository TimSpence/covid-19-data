all: csv json

csv:
	git fetch upstream && git merge --ff-only upstream/master

json:
	bin/csv2json

.PHONY: all csv json
