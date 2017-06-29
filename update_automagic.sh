#!/bin/bash
VERSION=$1

function usage {
    echo -e "
    USAGE EXAMPLES:

        ./$(basename $0) 0.8.7
        ./$(basename $0) 0.9.2
    "
}

if [ $# -ne 1 ]; then
    usage
    exit 1
fi

echo "+) Updating occurrences of 'packer_version: #.#.#'"
egrep -r "packer_version: [0-9]+\.[0-9]+\.[0-9]"

echo "+) Updating the badge in the README.md"
sed -i "/img.shields.io/c\[\![](https://img.shields.io/badge/Supports%20Packer%20Version-${VERSION}-blue.svg)](https://github.com/hashicorp/packer/blob/v${VERSION}/CHANGELOG.md)" README.md


