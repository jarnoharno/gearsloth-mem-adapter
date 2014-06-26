MOCHA := ./node_modules/.bin/mocha --ui tdd

.PHONY: build
build: node_modules

.PHONY: test
test: node_modules
	$(MOCHA)

node_modules: package.json
	npm install
	touch $@

.PHONY: clean
clean:
	rm -rf node_modules
