#!/bin/bash
find "./" -iname .DS_Store -delete
find "./" -iname ._* -delete
rm -r ./debs/*.deb
find debs -type f -name '*.deb' -delete
rm -r Packages.bz2
