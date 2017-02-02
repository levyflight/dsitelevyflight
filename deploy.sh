#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"


# Build the project.
#~/software/go/bin/hugo -t academic #if using a theme, replace by `hugo -t <yourtheme>`
~/software/go/bin/hugo -t hugo-theme-foundation6-blog 


# Go To Public folder
cd public
# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..

git add -A
git commit -am "updated"
git push -u origin master

