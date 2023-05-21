#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: \\$0 <file_path>"
  exit 1
fi

file_path="\$1"
ansible-playbook virtualhost_setup.yml -e "domain_names_file_path=$file_path"
