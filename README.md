### COMA - Cometary Object Metadata Archive

## COMA-UI - COMA user interface

This repo implements the COMA-UI node.sh user interface as a docker composable container
that depends on the COMA API (coma-api) middleware container and the COMA DB (coma-dev-mariadb) database container.

These 3 containers allow the entire COMA system to be run locally in Docker, e.g. on a Windows laptop using Docker for Desktop.

The COMA-UI repo is pulled as a submodule to get the underlying container to build with docker compose.
