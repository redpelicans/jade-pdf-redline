/* jshint node: true */
use strict;

var system = require('system')
  , page = require('webpage').create();

var args = ['in', 'out'].reduce(function(args, name, i) {
  args[name] = system.args[i+1];
  return args
}, {});

page.open(args.in, function(status) {
  if (status == "fail") {
    page.close();
    phantom.exit(1);
    return;
  }

  setTimeout(function () {
    page.render(args.out);
    page.close();
    phantom.exit(0);
  }, 200);
});
