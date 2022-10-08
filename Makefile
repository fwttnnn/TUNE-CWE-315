CC=coffee
CFLAGS=-ct --no-header

SRC=src/main.coffee
SRC_JS=dist/main.js

all: $(SRC_JS)

$(SRC_JS): $(SRC)
	$(CC) $(CFLAGS) -o $(SRC_JS) $(SRC)
	cp src/manifest.json dist/manifest.json

clean:
	$(RM) -r dist/

.PHONY:
	clean coffee
