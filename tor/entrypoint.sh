#!/bin/sh
set -e

# Ensure hidden service dir exists inside the mounted volume
if [ ! -d /var/lib/tor/hidden_service ]; then
  mkdir -p /var/lib/tor/hidden_service
  chmod 700 /var/lib/tor/hidden_service
  chown -R debian-tor:debian-tor /var/lib/tor
fi

exec tor -f /etc/tor/torrc
