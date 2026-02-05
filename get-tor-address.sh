#!/bin/bash

# Fetch the Tor hidden service hostname
ONION_ADDRESS=$(docker compose exec tor cat /var/lib/tor/hidden_service/hostname)

# Check if the file exists and is not empty
if [ -z "$ONION_ADDRESS" ]; then
  echo "Error: Could not retrieve .onion address. Ensure Tor is fully bootstrapped."
  exit 1
else
  echo "Your Tor .onion address is: $ONION_ADDRESS"
fi
