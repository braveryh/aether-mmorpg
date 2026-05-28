#!/usr/bin/env bash
set -e
mkdir -p server/bin
gcc -O2 -shared -fPIC native/combat.c -o server/bin/libcombat.so
