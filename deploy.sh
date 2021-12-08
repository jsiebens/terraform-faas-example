#!/bin/bash
set -x

if [ -x "/usr/local/bin/terraform" ]; then
    echo "Terraform already installed"
else
    cd /tmp
    wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
    unzip terraform_1.0.11_linux_amd64.zip
    mv terraform /usr/local/bin/
    rm -rf terraform_1.0.11_linux_amd64.zip
fi


/usr/local/bin/terraform version

cd /var/opt/terraform/src
terraform init

export TF_VAR_openfaas_password=$(cat /run/secrets/basic-auth-password)

terraform plan