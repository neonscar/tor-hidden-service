FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y tor && \
    rm -rf /var/lib/apt/lists/*

COPY torrc /etc/tor/torrc

RUN mkdir -p /var/lib/tor && \
    chown -R debian-tor:debian-tor /var/lib/tor

USER debian-tor

CMD ["tor", "-f", "/etc/tor/torrc"]
