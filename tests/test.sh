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
ansible-playbook test.yml | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test pass' && exit 0) || (echo 'Idempotence test fail' && exit 1)

# Destroy vagrant box(es)
vagrant destroy -f