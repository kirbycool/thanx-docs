#!/bin/bash

# Converts Swagger JSON in /swagger into HTML in /docs

cd spectacle/swagger

for file in *.json; do
  if [[ -f $file ]]; then
    name=${file//.json/}
    echo "Generating '$name' API docs"
    spectacle $file -f $name.html
    mv public/$name.html ../../docs
    rm -rf public
  fi
done
