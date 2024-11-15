#!/bin/bash

# Fetch current version
version=$(cat version.txt)

# Increment version (simple example, can be adjusted for major/minor versions)
new_version=$(echo "$version" | awk -F. -v OFS=. '{$NF++;print}')
echo $new_version > version.txt

# Update README.md with new version
sed -i "s/Current version: .*/Current version: $new_version/" README.md
echo "Version updated to $new_version"