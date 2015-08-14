#!/bin/bash

JAVA_ROLE='geerlingguy.java'

ansible-galaxy install --force -p ./test_roles ${JAVA_ROLE}
