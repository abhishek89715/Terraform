#!/bin/bash
ARTIFACT=$(packer build -machine-readable packer-example.json | awk -F, '$0 ~/artifact,0,id/ {print $6}')
AMI_ID=$(echo $ARTIFACT | cut -d ":" -f 2)
echo 'variable "AMI_ID" { default = "'${AMI_ID}'" }'  >> amivar.tf
echo $ARTIFACT
echo $AMI_ID

terraform init
terraform apply
