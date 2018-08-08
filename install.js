const download = require('download');

download(
  binaryUrl(),
  'bin',
  { extract: true },
);

function binaryUrl() {
  switch (process.platform) {
    case 'darwin':
      return 'https://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v2_9.zip';
    case 'linux':
      return 'https://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz';
    case 'win32':
      return 'https://kindlegen.s3.amazonaws.com/kindlegen_win32_v2_9.zip';
    default:
      throw new Error('Unsupported platform');
  }
}
