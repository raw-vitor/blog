#!/bin/bash

if [ ! -f /usr/local/bin/yarn ]; then
    echo "Install yarn"
    npm install -g yarn
fi
echo "Done"

if [ ! -d node_modules ]; then
    echo "Install packages publicar"
    yarn
fi
echo "Done"

echo "Building project"
yarn build
echo "Done"
