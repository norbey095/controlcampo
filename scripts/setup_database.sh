#!/usr/bin/env bash
set -euo pipefail

# Load env (if present)
if [ -f ".env" ]; then
  export $(grep -v '^#' .env | xargs -d '\n' -I {} echo {})
fi

: "${DB_HOST:=localhost}"
: "${DB_PORT:=3306}"
: "${DB_NAME:=bd_sanear_dev}"
: "${DB_USER:=root}"
: "${DB_PASSWORD:=}"

mysql_cli=(mysql -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" "-p$DB_PASSWORD" --protocol=tcp --default-character-set=utf8mb4)

echo ">> Creating database if not exists: $DB_NAME"
"${mysql_cli[@]}" -e "CREATE DATABASE IF NOT EXISTS \`$DB_NAME\` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
echo ">> Using database: $DB_NAME"
USE_DB="USE \`$DB_NAME\`;"

echo ">> Applying schema..."
# Prepend USE to ensure all objects land in the target DB
(echo "$USE_DB"; cat database/schema/00_full_schema.sql) | "${mysql_cli[@]}" 

echo ">> Loading development seeds..."
(echo "$USE_DB"; cat database/seeds/development/00_seed_data.sql) | "${mysql_cli[@]}"

echo ">> Done."
