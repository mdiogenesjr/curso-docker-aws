#!/bin/bash
echo "Starting ansible..."
#/mnt/c/projetos/curso-docker-aws/beerstore# cd ansible/
#chmod a+x run-assimble.sh
#./run-assimble.sh
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -c paramiko -i ../terraform/hosts --private-key ../terraform/key/beerstore_key beerstore-playbook.yml -v