#!/bin/bash
set -eu -o pipefail

echo "Creating Ansible venv..."
sudo /usr/local/bin/python3.10 -m venv /srv/venv/ansible
sudo chmod -R +rw /srv/venv/ansible
sudo chown -R ec2-user: /srv/venv/ansible

echo "Priming venv..."
source /srv/venv/ansible/bin/activate
pip3 install ansible==7.2.0 boto3 docker requests
deactivate

# TODO: pre-install Docker build images

