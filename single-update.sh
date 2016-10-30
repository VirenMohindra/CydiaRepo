#!/bin/bash
# convert to CLI || remove hard-coding
# Remove .deb if updating repo.
rm -r Packages.bz2
dpkg-deb -bZgzip projects/Fall\ Leaves debs
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages