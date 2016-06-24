require! {
  download
}

bin-url = switch process.platform
  | \darwin => 'http://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v2_9.zip'
  | \linux => 'http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz'
  | \win32 => 'http://kindlegen.s3.amazonaws.com/kindlegen_win32_v2_9.zip'
  | otherwise => throw new Error 'Unsupported platform'

console.log bin-url
