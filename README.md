# Local Derpibooru Database Dump Docker Compose
This is a docker compose for easy local [Derpibooru DB dump](https://derpibooru.org/pages/data_dumps) setup with PGAdmin. Put the *.pgdump file into the `dump` folder and run `docker-compose up`. First launch DB restoration may take some time, so just let it sit for a while.

PGAdmin can be accessed on http://localhost:5050. Port can be changed with `PGADMIN_PORT` env variable. It should log you into the DB automatically, but if it asks for a password, it's `postgres`.

Volumes removal:
```
docker volume rm local-derpi-db_pgadmin_data local-derpi-db_postgres_data
```
