FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y tor && \
    rm -rf /var/lib/apt/lists/*

COPY torrc /etc/tor/torrc
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

USER debian-tor

ENTRYPOINT ["/entrypoint.sh"]
