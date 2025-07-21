# SCP: 5K
Scp:5k dedicated server in docker

![](https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/872670/header.jpg?t=1741676893)

# How to use

## Build image

```
docker build -t scp-5k .
```

## Create diretory before bring up docker compose

```shell
# This is for ensuring permissions for user in container, the container operating user is not root for security.
mkdir -p data

docker compose up -d
```

# Configure the server

Edit this file (The file will be available after you install server)

> ./data/LinuxServer/Pandemic/Saved/Config/ServerConfig.ini
