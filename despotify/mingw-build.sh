#!/bin/sh
make CC='gcc -I'$(pwd)'/../openssl/include -I'$(pwd)'/../HOME/include -DEZXML_NOMMAP' install SUBDIRS=lib LDCONFIG=true DESTDIR=$(pwd)/../HOME
