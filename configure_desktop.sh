#!/usr/bin/env bash

set -o errexit
set -x


if ! hash ansible 2>/dev/null ; then
  bash install_ansible.sh
fi

ansible-galaxy install --force -r requirements.yml
ansible-playbook -i localhost, -c local playbook_main.yml --ask-become-pass
