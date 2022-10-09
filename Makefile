CC=coffee
CFLAGS=-ct --no-header

SRC=src/main.coffee
DIST=dist/main.js

all: $(DIST)

$(DIST): $(SRC)
	$(CC) $(CFLAGS) -o $(DIST) $(SRC)
	cp src/manifest.json dist/manifest.json

clean:
	$(RM) -r dist/

.PHONY:
	clean
