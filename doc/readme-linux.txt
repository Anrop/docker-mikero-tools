DePbo tools for Linux consists of a shared library and a set of command line tools.


INSTALLATION
============

The shared library, libdepbo.so.0.x.yy, depends on the following:

 * The LZO compression library
 * The Ogg bitstream file format libraries.
 * The Vorbis general audio compression codec libraries.


Before you run the DePbo tools, install these libraries:

In Debian/Ubuntu, install them by

  sudo apt-get install liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0


In RHEL/CentOS

  sudo yum install lzo libvorbis libogg


You can install the DePbo library and tools in your user home dir by just unpacking
the archive where this readme is into your home folder. That will create three
directories; bin, lib and doc.

Then, add $HOME/bin to your $PATH (if it isn't already there) and add $HOME/lib to
the shared library search path:

 export PATH=$PATH:$HOME/bin
 export LD_LIBRARY_PATH=$HOME/lib

