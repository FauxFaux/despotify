#!/bin/sh
set -ue
make -f win32/Makefile.gcc install INCLUDE_PATH=$(pwd)/../HOME/include BINARY_PATH=$(pwd)/../HOME/bin LIBRARY_PATH=$(pwd)/../HOME/lib "$@"
