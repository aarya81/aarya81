#!/bin/sh

import yaml

git config user.name github-actions
git config user.email github-actions@github.com
# export COMPUTER_FQDN="$1"
yq -i '.jobs.ansible.steps[0].run = env(vm_list)' myupdate.yml
git add myupdate.yml
git commit -m updated
git push
