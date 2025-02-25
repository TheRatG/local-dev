#!/usr/bin/env bash

DATABASE='<database>'
PROJECT_NAME=dump
FILENAME="/tmp/${PROJECT_NAME}.sql.gz"

COMMON_ARGS=(
  '--column-statistics=0'
  '--single-transaction'
  '--skip-lock-tables'
  '--no-tablespaces'
  '--skip-triggers'
  '--set-gtid-purged=OFF'
);
COMMON_ARGS=$( IFS=$' '; echo "${COMMON_ARGS[*]}" );

IGNORE_TABLES=(
  "--ignore-table=${DATABASE}.logs"
);
IGNORE_TABLES=$( IFS=$' '; echo "${IGNORE_TABLES[*]}" )

mysqldump --no-data $COMMON_ARGS $DATABASE | gzip > $FILENAME
mysqldump --no-create-info -Q -c -e --hex-blob $COMMON_ARGS $IGNORE_TABLES $DATABASE | gzip >> $FILENAME

echo "Dump file created: ${FILENAME}";
