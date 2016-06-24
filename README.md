kindlegen for Node.js
=====================

Simple Node.js wrapper for official kindlegen program

# Supported

Node.js v4 or higher

# Install

```
$ npm install kindlegen
```

# Usage

```js
const kindlegen = require('kindlegen');
const fs = require('fs');

kindlegen(fs.readFileSync('foo.epub'), (error, mobi) => {
	// mobi is an instance of Buffer with the compiled mobi file
});
```
