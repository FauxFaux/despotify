#!/bin/sh
set -ue
./configure --prefix=$(pwd)/../HOME
make install "$@"