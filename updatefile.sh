#!/bin/sh

import yaml

echo "First arg: $1"
echo "second arg: $2"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
printenv
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# git config user.name github-actions
# git config user.email github-actions@github.com
# export COMPUTER_FQDN="$1"
# yq -i '.jobs.ansible.steps[0].run = env(COMPUTER_FQDN)' myupdate.yml
# git add myupdate.yml
# git commit -m updated
# git push
