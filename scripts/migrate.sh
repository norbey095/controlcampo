#!/usr/bin/env bash
set -euo pipefail

if [ -f ".env" ]; then
  export $(grep -v '^#' .env | xargs -d '\n' -I {} echo {})
fi

: "${DB_HOST:=localhost}"
: "${DB_PORT:=3306}"
: "${DB_NAME:=bd_sanear_dev}"
: "${DB_USER:=root}"
: "${DB_PASSWORD:=}"

mysql_cli=(mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" "-p$DB_PASSWORD" --protocol=tcp --default-character-set=utf8mb4)
USE_DB="USE \`$DB_NAME\`;"

echo ">> Applying schema migrations (re-run safe for DDL that exists)..."
(echo "$USE_DB"; cat database/schema/00_full_schema.sql) | "${mysql_cli[@]}"
echo ">> Done."
