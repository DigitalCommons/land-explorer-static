#!/bin/bash
set -e
set -x

# If branch was inputted as argument, check it is checked out
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ ! -z "$1" ] && [ $1 != $CURRENT_BRANCH ]; then
    echo "ERROR: We cannot deploy branch $1 because the branch $CURRENT_BRANCH is checked out"
    exit 1
fi

# Pull latest files
git pull

# Copy the output into the default html directory
cp -T -r ./src /var/www/html
