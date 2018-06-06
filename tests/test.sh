#!/bin/bash

# Destroy every previous vagrant box(es)
vagrant destroy -f

# Create new one(s)
vagrant up
sleep 5

# Check role syntax
ansible-playbook test.yml --syntax-check

# Apply role
ansible-playbook test.yml

# Verify idempotence
ansible-playbook test.yml > ansible_run.out
./idempotence.sh ansible_run.out
rm ansible_run.out

# Destroy vagrant box(es)
vagrant destroy -f