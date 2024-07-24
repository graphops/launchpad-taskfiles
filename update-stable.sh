#!/bin/bash

set -x

# Step 1: Fetch all the latest git changes
git fetch

# Step 2: Check that the current branch is main
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" != "main" ]; then
    echo "Error: You are not on the 'main' branch. Please switch to 'main' to proceed."
    exit 1
fi

# Step 3: Check that there are no pending changes
if [ -n "$(git status --porcelain)" ]; then
    echo "Error: There are pending changes. Please commit or stash them before proceeding."
    exit 1
fi

# Step 4: Check that the local main branch is in sync with the remote main branch
local_main_commit=$(git rev-parse main)
remote_main_commit=$(git rev-parse origin/main)
if [ "$local_main_commit" != "$remote_main_commit" ]; then
    echo "Error: Your local 'main' branch is not in sync with the remote 'main' branch."
    echo "Please push or pull the latest changes."
    exit 1
fi

# Step 5: Update stable tag
git tag stable

# Step 6: Confirm with the user
read -p "Are you sure you want to push a new reference for the 'stable'? (y/n): " confirmation
if [ "$confirmation" != "y" ]; then
    echo "Aborting operation."
    exit 1
fi

# Step 7: Force push main
git push origin stable
