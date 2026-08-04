#!/bin/bash

pw_length=12
password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+{}[]' < /dev/urandom | fold -w "$pw_length" | head -n 1)
echo "Generated password: $password"

