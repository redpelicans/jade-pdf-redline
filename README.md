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

Options
---

Pass an options object (`jadepdf({/* options */})`) to configure the output.

#### options.phantomPath
Type: `String`
Default value: `Path provided by phantomjs module`

Path to phantom binary

#### options.cssPath
Type: `String`
Default value: `../pdf.css`

Path to custom CSS file

#### options.paperFormat
Type: `String`
Default value: `A4`

'A3', 'A4', 'A5', 'Legal', 'Letter' or 'Tabloid'

#### options.paperOrientation
Type: `String`
Default value: `portrait`

'portrait' or 'landscape'

#### options.paperBorder
Type: `String`
Default value: `1cm`

Supported dimension units are: 'mm', 'cm', 'in', 'px'

#### options.renderDelay
Type: `Number`
Default value: `1000`

Delay in ms before rendering the PDF (give HTML and CSS a chance to load)

CLI interface
---

### Installation

To use jade-pdf-redline as a standalone program from the terminal run

```sh
npm install -g jade-pdf-redline
```

### Usage

```sh
Usage: jade-pdf [options] <jade-file-path>

Options:

  -h, --help                             output usage information
  -V, --version                          output the version number
  <markdown-file-path>                   Path of the markdown file to convert
  -p, --phantom-path [path]              Path to phantom binary
  -s, --css-path [path]                  Path to custom CSS file
  -f, --paper-format [format]            'A3', 'A4', 'A5', 'Legal', 'Letter' or 'Tabloid'
  -r, --paper-orientation [orientation]  'portrait' or 'landscape'
  -b, --paper-border [measurement]       Supported dimension units are: 'mm', 'cm', 'in', 'px'
  -d, --render-delay [millis]            Delay before rendering the PDF (give HTML and CSS a chance to load)
  -o, --out [path]                       Path of where to save the PDF
```
