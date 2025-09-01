#!/bin/bash

COMPONENT=$1
BASE_DIR=$(pwd)   # current directory

# Create directories inside the component
mkdir -p "$BASE_DIR/$COMPONENT"/{vars,tasks,templates,files}

# Create main.yaml in vars and tasks
touch "$BASE_DIR/$COMPONENT"/vars/main.yaml
touch "$BASE_DIR/$COMPONENT"/tasks/main.yaml
