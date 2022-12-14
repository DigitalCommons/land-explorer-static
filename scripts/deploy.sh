#!/bin/bash
set -e
set -x

# Pull latest files
git pull

# Copy the output into the default html directory
cp -T -r ./src /var/www/html
