#!/bin/bash
set -e

mkdir -p /var/opt/terraform/bin

if [ -x "/var/opt/terraform/bin/terraform" ]; then
    echo "Terraform already installed"
else
    cd /var/opt/terraform/bin
    wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
    unzip terraform_1.0.11_linux_amd64.zip
    rm -rf terraform_1.0.11_linux_amd64.zip
fi


/var/opt/terraform/bin/terraform version

cd /var/opt/terraform/src

export TF_VAR_openfaas_password=$(cat /run/secrets/basic-auth-password)

/var/opt/terraform/bin/terraform init
/var/opt/terraform/bin/terraform apply -auto-approve