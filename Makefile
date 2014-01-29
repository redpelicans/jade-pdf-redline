REPORTER = dot

test:
	@NODE_ENV=test ./node_modules/.bin/mocha --reporter $(REPORTER)

test-w:
	@NODE_ENV=test ./node_modules/.bin/mocha --reporter $(REPORTER) --watch

lib-cov:
	jscoverage --no-highlight lib lib-cov

test-cov: lib-cov
	@COVERAGE=1 $(MAKE) test REPORTER=html-cov > coverage.html

test-coveralls: lib-cov
	@COVERAGE=1 $(MAKE) test REPORTER=mocha-lcov-reporter | ./node_modules/coveralls/bin/coveralls.js

clean:
	rm -rf lib-cov

.PHONY: test test-w
