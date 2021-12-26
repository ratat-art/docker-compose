#!/bin/bash

if [ "$(ls -1q * | wc -l)" -gt 1 ]; then
  echo "This directory is not empty"

  read -p "Press any key to close shell..."
else
  read -N 1 -p "This will clone project to this directory. Continue (y/N)?" answer
  echo
  
  if [ "${answer,,}" == "y" ]; then
      echo "Cloning..."

      git clone https://github.com/ratat-art/docker-compose
      git clone https://github.com/ratat-art/rust-api
      git clone https://github.com/ratat-art/svelte-frontend

      read -p "Press any key to close shell..."
  fi
fi
