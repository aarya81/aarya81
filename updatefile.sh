#!/bin/sh

import yaml

# date > 1.txt
ls
git config user.name github-actions
git config user.email github-actions@github.com
REPLACESTRING="touch myupdate.yml
git push"
echo "show string"
echo strenv(REPLACESTRING)
yq -i '.jobs.ansible.steps[0].run = strenv(REPLACESTRING)' myupdate.yml


git add myupdate.yml
# git add 1.txt
git commit -m updated
git push
