#!/bin/bash
set -eu -o pipefail

echo "Creating Ansible venv..."
sudo python3.11 -m venv /srv/venv/ansible
sudo chmod -R +rw /srv/venv/ansible
sudo chown -R ec2-user: /srv/venv/ansible

echo "Priming venv..."
source /srv/venv/ansible/bin/activate
pip3 install ansible==9.1.0 boto3 docker==6.0.1 requests
deactivate

# TODO: pre-install Docker build images

