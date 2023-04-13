#!/bin/sh

$vmName="example-machine"
$resourceGroup="example-resources"
az vm show --name $vmName --resource-group $resourceGroup

# import yaml
# git config user.name github-actions
# git config user.email github-actions@github.com
# export ABHI_STRING="touch myupdate.yml
# git push"
# yq -i '.jobs.ansible.steps[0].run = env(ABHI_STRING)' myupdate.yml
# git add myupdate.yml
# git commit -m updated
# git push
