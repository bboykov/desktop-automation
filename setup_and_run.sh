#!/usr/bin/env bash

set -o errexit
set -x

cd ~
git clone https://github.com/bboykov/configure-ubuntu-desktop.git
cd configure-ubuntu-desktop
bash configure_desktop.sh
