#!/bin/bash

DISTPATH=$(cd $1; pwd)
cd `dirname $0`

echo "Assets folder: $DISTPATH"
echo "Current dir: {$PWD}"

docker build -t onescript:deb ${PWD}/builders/deb/
docker run --rm -v os_bld_output:/media onescript:deb 
