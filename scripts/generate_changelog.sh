#!/bin/bash

# Fetch latest version and date
version=$(cat version.txt)
date=$(date +'%Y-%m-%d')

# Get the list of commits since last release
commits=$(git log --oneline $(git describe --tags --abbrev=0)..HEAD)

# Append changelog
echo "## [$version] - $date" >> CHANGELOG.md
echo "### Added" >> CHANGELOG.md
echo "$commits" >> CHANGELOG.md
echo "" >> CHANGELOG.md