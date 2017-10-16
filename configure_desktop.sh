#!/usr/bin/env bash

set -o errexit
set -x


if ! hash ansible 2>/dev/null ; then
  bash install_ansible.sh
fi

ansible-galaxy install --force -r requirements.yml
ansible-playbook -i localhost, -c local main_playbook.yml --ask-sudo-pass
