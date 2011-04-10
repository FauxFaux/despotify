#!/bin/sh
set -ue
./config --prefix=$(pwd)/../HOME
make "$@" || true
cp libcrypto.a ../HOME/lib
cp -r include/openssl ../HOME/include
