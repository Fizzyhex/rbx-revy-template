#!/bin/sh

# stop execution if a command fails
set -e

mkdir -p src
mkdir -p src/client
mkdir -p src/server
mkdir -p src/shared

mkdir -p dist
mkdir -p dist/client
mkdir -p dist/server
mkdir -p dist/shared

mkdir -p roblox_packages

if [ ! -f "rokit.toml" ]; then
    rokit init
fi

rokit add rojo-rbx/rojo
rokit add seaofvoices/darklua
rokit install

if [ ! -f "pesde.toml" ]; then
    pesde init
fi

pesde install
pesde add fizzyhex/revy

GREEN = "\033[0;32m"
NC = "\033[0m" # No Color

printf "${GREEN}Ready to start?${NC} Run `./scripts/dev.sh` to serve your project with Rojo!"