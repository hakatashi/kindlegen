const expect = require('chai').expect;
const path = require('path');
const fs = require('fs');
const kindlegen = require('../index.js');

describe('Basic usage', () => {
  const ePubPath = path.resolve(__dirname, 'test.epub');
  const mobiPath = path.resolve(__dirname, 'mobiPath.mobi');

  afterEach(() => {
    fs.unlinkSync(mobiPath);
  });

  it('converts an epub', (done) => {
    kindlegen(ePubPath, mobiPath)
      .then(() => {
        const exists = fs.existsSync(mobiPath);
        expect(exists).to.be.true;
        const stats = fs.statSync(mobiPath);
        expect(stats.size).to.be.greaterThan(5000);
        done();
      });
  });
});
