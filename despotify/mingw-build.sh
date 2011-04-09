#!/bin/sh
set -eu
make install \
	CC='gcc -I'$(pwd)'/../openssl/include -I'$(pwd)'/../HOME/include -DEZXML_NOMMAP' \
	#clients don't build
	SUBDIRS=lib \
	#ld config doesn't exist
	LDCONFIG=true \
	INSTALL_PREFIX=$(pwd)/../HOME \
	"$@"
