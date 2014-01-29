var jadepdf = require('../')
  , assert = require('assert')
  , fs = require('fs')
  , tmp = require('tmp')
  , through = require('through');

tmp.setGracefulCleanup();

describe('jadepdf', function() {
  it('should generate a non-empty PDF', function(done) {
    this.timeout(5000);

    tmp.file({postfix: '.pdf'}, function(err, tmpPdfPath, tmpPdfFd) {
      assert.ifError(err);
      fs.close(tmpPdfFd);

      var outputStream = fs.createWriteStream(tmpPdfPath);

      fs.createReadStream(__dirname+'/hello.jade').pipe(jadepdf()).pipe(outputStream);

      outputStream.on('finish', function() {
        fs.readFile(tmpPdfPath, {encoding: 'utf8'}, function (err, data) { 
          assert.ifError(err);
          assert.ok(data.length > 0);
          done();
        });
      });
    });
  });
});
