REPORTER = spec

test:
	@NODE_ENV=test ./node_modules/.bin/mocha --reporter $(REPORTER)

test-w:
	@NODE_ENV=test ./node_modules/.bin/mocha --reporter $(REPORTER) --watch

lint:
	./node_modules/.bin/jshint ./lib ./lib-phantom ./test ./index.js

lib-cov:
	jscoverage --no-highlight lib lib-cov

clean:
	rm -rf lib-cov

test-cov: lib-cov
	@COVERAGE=1 $(MAKE) test REPORTER=html-cov > coverage.html
	$(MAKE) clean

test-coveralls: lib-cov
	@COVERAGE=1 $(MAKE) test REPORTER=mocha-lcov-reporter | ./node_modules/coveralls/bin/coveralls.js
	$(MAKE) clean

.PHONY: test test-w
