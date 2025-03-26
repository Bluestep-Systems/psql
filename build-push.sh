#!/bin/bash
cd $(dirname $0)
set -e
source .env
docker compose build psql
docker push ghcr.io/bluestep-systems/psql:latest
docker push ghcr.io/bluestep-systems/psql:${PSQL_VERSION}
