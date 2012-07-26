#!/bin/sh

if [ -r "./build-uservars.sh" ]
then
    echo "Loading User Vars"
    source "./build-uservars.sh"
	echo "User Vars Loaded"
	echo ""
fi

echo "Building lib..."

compc -include-sources ./src/ -output ./bin/net.kgdesignes.utils.swc

echo "Library built to lib\net.kgdesignes.utils.swc"
echo ""