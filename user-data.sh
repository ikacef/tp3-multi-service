#!/bin/bash
apt-get update
apt-get install -y docker.io git docker-compose-plugin
systemctl enable --now docker
mkdir -p /srv/docker && cd /srv/docker
git clone https://github.com/ikacef/tp3-multi-service.git .
docker compose up -d
