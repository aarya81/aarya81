#!/bin/sh

import yaml

date > 1.txt

git config user.name github-actions
git config user.email github-actions@github.com
with open("myupdate.yml") as istream:
    ymldoc = yaml.safe_load(istream)
    # ymldoc['jobs']['ansible']['steps'] = 'new_admin_pass'

with open("modified.yml", "w") as ostream:
    yaml.dump(ymldoc, ostream, default_flow_style=False, sort_keys=False)

git add modified.yml
git add 1.txt
git commit -m updated
git push
