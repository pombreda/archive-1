Pod::Spec.new do |s|
  s.name         = "archive"
  s.version      = "3.1.2"
  s.summary      = "Multi-format archive and compression library"
  s.description  = <<-DESC
The libarchive library features:

Support for a variety of archive and compression formats ?.
Robust automatic format detection ?, including archive/compression combinations such as tar.gz.
Zero-copy internal architecture ? for high performance.
Streaming architecture eliminates all limits on size of archive, limits on entry sizes depend on particular formats.
Carefully factored code to minimize bloat when programs are statically linked.
Growing test suite ? to verify correctness of new ports.
Works on most POSIX-like systems (including FreeBSD, Linux, Solaris, etc.)
Supports Windows, including Cygwin, MinGW, and Visual Studio.
                   DESC
  s.homepage     = "http://www.libarchive.org"
  s.license      = 'BSD'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/archive.git", :tag => s.version.to_s }

  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.source_files = 'include/*.h'
  s.public_header_files = 'include/*.h'
  s.preserve_paths = 'include'
end
