#!/bin/sh
set -eu
make install \
	CC='gcc -I'$(pwd)'/../openssl/include -I'$(pwd)'/../HOME/include -DEZXML_NOMMAP -shared' \
	SUBDIRS=lib \
	LDCONFIG=true \
	INSTALL_PREFIX=$(pwd)/../HOME \
	"$@"
