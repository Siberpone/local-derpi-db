#!/bin/sh
ENTRY_DIR="/docker-entrypoint-initdb.d"
DERPI_DUMP="$ENTRY_DIR/$(ls -At $ENTRY_DIR | grep .pgdump | tail -n 1)"
pg_restore -O -d derpibooru $DERPI_DUMP
