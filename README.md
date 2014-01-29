jade-pdf-redline [![Build Status](https://travis-ci.org/redpelicans/jade-pdf-redline.png)](https://travis-ci.org/redpelicans/jade-pdf-redline) [![Dependency Status](https://david-dm.org/redpelicans/jade-pdf-redline.png)](https://david-dm.org/redpelicans/jade-pdf-redline) [![Coverage Status](https://coveralls.io/repos/redpelicans/jade-pdf-redline/badge.png?branch=master)](https://coveralls.io/r/redpelicans/jade-pdf-redline?branch=master)
===

Node module that converts jade files to PDFs.

Getting started
---

    npm install jade-pdf-redline

Usage
---

```javascript
var jadepdf = require('jade-pdf-redline')
  , fs = require('fs');

fs.createReadStream('path/to/template.jade')
  .pipe(jadepdf())
  .pipe(fs.createWriteStream('path/to/document.pdf'));
```
