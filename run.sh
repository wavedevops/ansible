#!/bin/bash

# Pull the latest changes from Git
git pull

if [ "$1" == "ansible" ]; then
  ansible-playbook -i all, playbook.yml
elif [ "$1" == "terraform" ]; then
  terraform apply -auto-approve
fi
