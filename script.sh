#!/bin/bash

set -e

cd Infrastructure 
terraform init
terraform apply -auto-approve

IP_ADDRESS=$(terraform output public_ip)

echo $IP_ADDRESS

cd ../Playbooks
echo "
[servers]
server1 ansible_host=$IP_ADDRESS ansible_user=amine ansible_ssh_private_key_file=$ssh_private_key_file ansible_ssh_common_args='-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
" > inventory.ini

while ! ansible all -i inventory.ini -m ping 2>/dev/null 1>/dev/null; do
    echo "Waiting for server..."
    sleep 2
done

ansible-playbook -i inventory.ini jenkins-server.yml