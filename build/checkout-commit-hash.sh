#!/bin/bash

if [ ! -z "$COMMIT_HASH" ]
then
    echo "Checking out $COMMIT_HASH"
    git checkout $COMMIT_HASH
    exit ${?}
else
    echo "Error: no commit hash to checkout. Please set COMMIT_HASH."
    exit 1
fi