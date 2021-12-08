#!/bin/bash
set -ex

# Usage: http POST :8080/echo msg==hello foo=bar

echo "This is a simple echo hook."
echo "Hello world"

cd /tmp

wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip
unzip terraform_1.0.11_linux_amd64.zip
mv terraform /usr/local/bin/