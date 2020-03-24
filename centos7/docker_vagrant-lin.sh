#!/usr/bin/env sh

set -x

ansible-playbook docker.yml -i hosts -l vagrant-lin -vv
