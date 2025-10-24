#!/bin/sh

# stop execution if a command fails
set -e

mkdir -p src
mkdir -p src/client
mkdir -p src/server
mkdir -p src/shared

rokit init
rokit add rojo-rbx/rojo
rokit add seaofvoices/darklua

pesde init
pesde install fizzyhex/revy