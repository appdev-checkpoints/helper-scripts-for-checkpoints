#!/bin/bash

# Get the repository URL from git remote
REPO_URL=$(git config --get remote.origin.url | sed 's/\.git$//' | sed 's/git@github\.com:/https:\/\/github\.com\//')

# Generate markdown list from oldest to newest (using tformat to add final newline)
git log --reverse --pretty=tformat:"%H %s" | while IFS=' ' read -r hash message; do
    echo "- $message"
    echo "  - [Just the diff for this step]($REPO_URL/commit/$hash)"
    echo "  - [Browse my whole codebase at this point in time]($REPO_URL/tree/$hash)"
done