#!/bin/sh

# If a command fails then the deploy stops
set -e

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Pull all & Pet all.
# git fetch --all && git reset --hard origin/master && git pull