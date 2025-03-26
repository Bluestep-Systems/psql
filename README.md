# psql 
## Build and push public image of psql
```bash
souce .env
docker compose build psql
docker push ghcr.io/bluestep-systems/psql:latest
docker push ghcr.io/bluestep-systems/psql:${PSQL_VERSION}
```
