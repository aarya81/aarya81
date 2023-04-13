#!/bin/sh

import yaml

# date > 1.txt
ls
git config user.name github-actions
git config user.email github-actions@github.com
replacestring="touch myupdate.yml
git push"
echo "show string"
$replacestring
yq -i '.jobs.ansible.steps[0].run = $replacestring' myupdate.yml


git add myupdate.yml
# git add 1.txt
git commit -m updated
git push
