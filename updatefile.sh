#!/bin/sh

import yaml

echo "First arg: $1"
echo "Second arg: $2"

git config user.name github-actions
git config user.email github-actions@github.com
export ABHI_STRING="touch myupdate.yml
git push"
yq -i '.jobs.ansible.steps[0].run = env(ABHI_STRING)' myupdate.yml
git add myupdate.yml
git commit -m updated
git push
