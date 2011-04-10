#!/bin/sh

for f in zlib libogg libvorbis openssl despotify; do
	echo '############################################'
	echo "# Going to build $f"
	echo '############################################'
	cd $f
	./mingw-build.sh "$@"
	cd ..
done

D=despotify-bin/
echo Installing to $D...
mkdir -p $D/bin || echo Already exists..
mkdir -p $D/lib || echo Already exists..
mkdir -p $D/include || echo Already exists..

cp $(which libpthread-2.dll) $D/bin/
cp HOME/bin/* $D/bin/
rm $D/bin/libvorbisenc-*.dll
cp HOME/lib/libdespotify.dll.a $D/lib/
cp -r HOME/include/* $D/include/

echo Done.
