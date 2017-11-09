#!/bin/bash

echo "Checking stylus"

if stylus --version > /dev/null; then
  echo "stylus is already installed."
else
  if node -v > /dev/null; then
    if npm -v > /dev/null; then
      echo "Install stylus"
      sudo npm install -g stylus
    else
      echo "npm is not installed"
    fi
  else
    echo "node is not installed"
  fi
fi
