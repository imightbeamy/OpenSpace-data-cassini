#!/bin/bash

OPEN_SPACE_ROOT=$1

for p in $(find . -type d -not -path "*.git*");
do
    echo "Creating $OPEN_SPACE_ROOT/$p"
    mkdir -p $OPEN_SPACE_ROOT/$p
done

for p in $(find . -type f -not -path "*.git*");
do
    echo "Copying $OPEN_SPACE_ROOT/$p"
    cp -p $p $OPEN_SPACE_ROOT/$p
done