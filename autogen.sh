#!/bin/bash

set -euxo pipefail

# Remove legacy build system
rm -vf Makefile.in configure configure.guess configure.in configure.sub \
       interface/Makefile.in paranoia/Makefile.in

# autoreconf fails if these ones are missing
for file in NEWS AUTHORS ChangeLog; do
  echo "Dummy ${file} file" > ${file}
done

# autoreconf also tries to copy COPYING
cat COPYING-LGPL COPYING-GPL > COPYING

autoreconf -vfi -Wall

# Remove artificially created files
rm -vf NEWS AUTHORS ChangeLog COPYING
