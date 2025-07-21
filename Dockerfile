FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

WORKDIR /app

COPY --chown=ubuntu:ubuntu entrypoint.sh /app/entrypoint.sh

RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates curl gnupg2 lib32gcc-s1 software-properties-common \
    && dpkg --add-architecture i386 \
    && mkdir -p /app/steamcmd \
    && curl -sSL https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar -xz -C /app/steamcmd \
    && groupadd -g 1000 ubuntu \
    && useradd -m -u 1000 -g 1000 -s /bin/bash ubuntu \
    && chown -R ubuntu:ubuntu /app \
    && chmod +x /app/entrypoint.sh \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER ubuntu:ubuntu

ENTRYPOINT ["/app/entrypoint.sh"]
