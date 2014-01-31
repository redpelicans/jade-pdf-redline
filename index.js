/* jshint node: true */
'use strict';

module.exports = process.env.COVERAGE ? require('./lib-cov') : require('./lib');
