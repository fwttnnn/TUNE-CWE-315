CC=coffee
CFLAGS=-ct --no-header

SRC=$(wildcard src/*coffee)
DIST=$(patsubst src/%.coffee,dist/%.js, $(SRC))

all: TUNE-CWE-315

TUNE-CWE-315: $(DIST)
	cp src/manifest.json dist/manifest.json

dist/%.js: src/%.coffee
	$(CC) $(CFLAGS) -o $@ $<

clean:
	$(RM) -r dist/

.PHONY:
	clean
