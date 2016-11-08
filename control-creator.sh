#!/bin/bash
# Remember to make this executable with `chmod u+x control-creator.sh`
# and then `./control-creator.sh` to run

echo "CONTROL"
echo "Get control of your packages with automated control and directory creation"
echo "__________________________________________________________________________"

# Grabbing Inputs and Variables
read -p "Name [Concatenates ' - Springy BootLogo' at the end by default]: " name
fullName=$name" - Springy BootLogo"

read -p "Depends [defaults to com.aditkamath.springy]: " depends
depends=${depends:-com.aditkamath.springy}

read -p "Version [defaults to 1.0]: " version
version=${version:-1.0}

read -p "Architecture [defaults to iphoneos-arm]: " architecture
architecture=${architecture:-iphoneos-arm}

read -p "Description [defaults to Animated respring theme for Springy]: " desc
desc=${desc:-Animated respring theme for Springy}

read -p "Depiction [defaults to baseURL/depictions/{package name}]: " depiction
depiction=${depiction:-"http://virenmohindra.github.io/depictions/$name"}

read -p "Maintainer [defaults to Viren Mohindra <viren.mohindra@gmail.com>]: " maintainer
maintainer=${maintainer:-"Viren Mohindra <viren.mohindra@gmail.com>"}

read -p "Author [defaults to Viren Mohindra <viren.mohindra@gmail.com>]: " author
author=${author:-$maintainer}

read -p "Section [defaults to Addons (Springy)]: " section
section=${section:-"Addons (Springy)"}

# Converting whitespaces to dashes for the packageName
dashedName=${name// /-}

# lowercase (if you have bash ~> "4.0", could have used this elegant function:
# lowerCase=${dashedName,,} without ANY echo but coverage smh
lowerCase=$(echo "$dashedName" | tr '[:upper:]' '[:lower:]')

# final packageName
# (probably could have done this more efficiently in one line)
packageName=io.github.virenmohindra.$lowerCase

#dir structure
mkdir -p "$name"/DEBIAN
mkdir -p "$name"/Library/Springy/"$name"

# creating control file
cat <<EOT >> "$name"/DEBIAN/control
Package: $packageName
Name: $fullName
Depends: $depends
Version: $version
Architecture: $architecture
Description: $desc
Depiction: $depiction
Maintainer: $maintainer
Author: $author
Section: $section
EOT

# lmao
echo "configuring everything..."
sleep 1
echo "done!"

# TO DO LIST
# set global configure variables for mass scalability in .env or .bashrc ? need more research