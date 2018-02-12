#!/usr/bin/env bash

set -o errexit
set -x

if [ $1 == "init" ]; then
  if ! hash ansible 2>/dev/null ; then
    bash other/install_ansible.sh
  fi

  ansible-galaxy install --force -r other/requirements.yml

  exit 0
fi

ansible-playbook -i localhost, -c local playbooks/${1}.yml --ask-become-pass
