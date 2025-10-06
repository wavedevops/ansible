#!/bin/bash

# Pull the latest changes from Git
git pull

# Run the Ansible playbook
ansible-playbook -i all, playbook.yml
