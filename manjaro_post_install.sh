#!/usr/bin/env bash

yay -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

pipx install poetry
mkdir -p ~/.zsh/completions
poetry completions zsh >~/.zsh/completions/_poetry
poetry config virtualenvs.in-project true

kubectl completion zsh
# Setup with `gcloud init`

sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# yay -S nvidia-docker

npm install -g markdownlint-cli

docker run --name mongo_local_server -p 27017:27017 -v /home/smichaud/MongoData/:/data/db -d mongo
sudo snap install robo3t-snap
docker run --name postgres_local_server -e POSTGRES_PASSWORD=canex -p 5432:5432 -v postgresdata:/var/lib/postgresql/data -d postgres
docker run --name=pgadmin --network=host -e "PGADMIN_LISTEN_PORT=5050" -e "PGADMIN_DEFAULT_EMAIL=sebastien.michaud@can-explore.com" -e "PGADMIN_DEFAULT_PASSWORD=canex" -d dpage/pgadmin4
docker run -d --hostname canex-rabbit --name canex-rabbit -p 5672:5672 -p 15672:15672 rabbitmq:management

sudo -iu postgres initdb -D /var/lib/postgres/data
systemctl enable --now postgresql

mkdir ~/MongoData
