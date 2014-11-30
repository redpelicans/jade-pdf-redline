jade-pdf-redline [![Build Status](https://travis-ci.org/redpelicans/jade-pdf-redline.png)](https://travis-ci.org/redpelicans/jade-pdf-redline) [![Dependency Status](https://david-dm.org/redpelicans/jade-pdf-redline.png)](https://david-dm.org/redpelicans/jade-pdf-redline) [![Coverage Status](https://coveralls.io/repos/redpelicans/jade-pdf-redline/badge.png?branch=master)](https://coveralls.io/r/redpelicans/jade-pdf-redline?branch=master)
===

Node module that converts jade files to PDFs.  
> https://npmjs.org/package/jade-pdf-redline

## Getting started

    npm install jade-pdf-redline

## Usage

```javascript
var jadepdf = require('jade-pdf-redline')
  , fs = require('fs');

fs.createReadStream('path/to/template.jade')
  .pipe(jadepdf())
  .pipe(fs.createWriteStream('path/to/document.pdf'));
```

## Options

Pass an options object (`jadepdf({/* options */})`) to configure the output.

##### options.phantomPath
Type: `String`
Default value: `Path provided by phantomjs module`  
*Path to phantom binary*

##### options.cssPath
Type: `String`
Default value: `../pdf.css`  
*Path to custom CSS file*

##### options.paperFormat
Type: `String`
Default value: `A4`  
*'A3', 'A4', 'A5', 'Legal', 'Letter' or 'Tabloid'*

##### options.paperOrientation
Type: `String`
Default value: `portrait`  
*'portrait' or 'landscape'*

##### options.paperBorder
Type: `String`
Default value: `1cm`  
*Supported dimension units are: 'mm', 'cm', 'in', 'px'*

##### options.renderDelay
Type: `Number`
Default value: `1000`  
*Delay in ms before rendering the PDF*

##### options.locals
Type: `Object`
Default value: `{}`  
*Locals for template*

## CLI interface

### Installation

To use jade-pdf-redline as a standalone program from the terminal run

    $ npm install -g jade-pdf-redline

### Usage

```sh
Usage: jade-pdf [options] <jade-file-path>

Options:

  -h, --help                             output usage information
  -V, --version                          output the version number
  <jade-file-path>                       Path of the jade file to convert
  -p, --phantom-path [path]              Path to phantom binary
  -s, --css-path [path]                  Path to custom CSS file
  -f, --paper-format [format]            'A3', 'A4', 'A5', 'Legal', 'Letter' or 'Tabloid'
  -r, --paper-orientation [orientation]  'portrait' or 'landscape'
  -b, --paper-border [measurement]       Supported dimension units are: 'mm', 'cm', 'in', 'px'
  -d, --render-delay [millis]            Delay before rendering the PDF
  -o, --out [path]                       Path of where to save the PDF
```

## Running Tests

To run the test suite, first invoke the following command within the repo, installing the development dependencies:

    $ npm install

Then run the tests:

    $ make test

## License

The MIT License (MIT)

Copyright (c) 2014 redpelicans

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
