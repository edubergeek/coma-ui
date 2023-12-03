### COMA - Cometary Object Metadata Archive

## COMA-UI - COMA user interface

This repo implements the COMA-UI node.sh user interface as a docker composable container
that depends on the COMA API (coma-api) middleware container and the COMA DB (coma-dev-mariadb) database container.

These 3 containers allow the entire COMA system to be run locally in Docker, e.g. on a Windows laptop using Docker for Desktop.

The COMA-UI repo is pulled as a submodule to get the underlying container to build with docker compose.

## Building

To build the latest release:

bash mods/sync.sh
docker compose build --no-cache

## Running the UI

1  Start the database (coma-dev-mariadb)
1  Start the API container (coma-api)
1  Start the UI (this container coma-ui)

docker compose up -d

