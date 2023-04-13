#!/bin/sh

import yaml

# date > 1.txt
ls
git config user.name github-actions
git config user.email github-actions@github.com
export ABHI_STRING="touch myupdate.yml
git push"
echo "$ABHI_STRING";
printenv
# yq -i '.jobs.ansible.steps[0].run = env(REPLACESTRING)' myupdate.yml
# yq w -i myupdate.yml '.jobs.ansible.steps[0].run' -- "$(REPLACESTRING)"




git add myupdate.yml
# git add 1.txt
git commit -m updated
git push
