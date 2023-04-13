#!/bin/sh

import yaml

# date > 1.txt
ls
git config user.name github-actions
git config user.email github-actions@github.com
REPLACESTRING="touch myupdate.yml
git push"
yq  --version
printenv
yq -i '.jobs.ansible.steps[0].run = env(REPLACESTRING)' myupdate.yml

# yq w myupdate.yml .jobs.ansible.steps[0].run "\n$(REPLACESTRING)"


git add myupdate.yml
# git add 1.txt
git commit -m updated
git push
