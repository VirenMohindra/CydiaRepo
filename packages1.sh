#!/bin/bash
#
# This script packages all folders to a Debian packages in a specifed folder and moves them to another folder.
#
# This messy code was created by Benjamin E.
# /u/benyben27
#
#
#
 
export pkgpath="projects" # change this to change input folder
export debpath="debs"  # change this to change output folder
export tmp="${pkgpath}/"
export err=0
for D in `find $pkgpath -type d -maxdepth 1`; do
    if [[ $D != $pkgpath ]]; then
        dpkg-deb -Zgzip -b "${D}"
        if [ ! -f ${D}.deb ]; then
            echo "[ERROR]: ${D#$tmp}.deb not found in ${tmp}."
            echo "[INFO ]: skipping..."
            ((err++))
        else
            echo "[INFO ]: moving ${D}.deb to ${debpath}/${D#$tmp}.deb"
            `mv ${D}.deb ${debpath}/${D#$tmp}.deb`
        fi
    fi
done
if [[ err != 0 ]]; then
    echo "Finished with ${err} error(s)"
else
    echo "Done!"
fi