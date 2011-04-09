#!/bin/sh
set -eu

for f in zlib libogg libvorbis openssl despotify; do
	echo '############################################'
	echo '# Going to build $f '
	echo '############################################'
	cd $f
	./mingw-build.sh "$@"
	cd ..
done
