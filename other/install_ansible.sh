#!/usr/bin/env bash

set -o errexit
set -x

sudo apt-get update
sudo apt install -y git python-pip
sudo -H pip install --upgrade pip

# Due to https://github.com/ansible/ansible/issues/26670
sudo -H pip install "pyOpenSSL>=17.2.0"

# Install psutil for dconf module
sudo -H pip install psutil

# Install latest ansible available
sudo -H pip install ansible --upgrade

