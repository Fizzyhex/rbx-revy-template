#!/bin/sh

# stop execution if a command fails
set -e

mkdir -p src
mkdir -p src/client
mkdir -p src/server
mkdir -p src/shared

if [ ! -f "rokit.toml" ]; then
    rokit init
fi

rokit add rojo-rbx/rojo
rokit add seaofvoices/darklua

if [ ! -f "pesde.toml" ]; then
    pesde init
fi

pesde install fizzyhex/revy