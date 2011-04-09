#!/bin/sh
set -ue
./config --prefix=$(pwd)/../HOME
make install "$@"
