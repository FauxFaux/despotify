#!/bin/sh
set -eu
cd lib
OUT=../../HOME/lib
gcc -DDEBUG_LOGIN -DDEBUG_PACKETS -DDEBUG -DEZXML_NOMMAP -D_WIN32_WINNT=0x600 \
	-D'nanosleep(x,y)=Sleep(100)' -std=gnu99 -I../../HOME/include/ *.c -c

gcc libdespotify.def -shared -Wl,--out-implib,libdespotify.dll.a \
	-o libdespotify.dll -B$OUT *.o \
	-lws2_32 -lz -lpthread -ldnsapi -logg -lvorbisfile -lcrypto -lgdi32

cp libdespotify.dll.a $OUT
cp libdespotify.dll $OUT/../bin
