#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER portal_owner WITH ENCRYPTED PASSWORD 'superSecuredPassword';
    GRANT ALL PRIVILEGES ON DATABASE db_portal TO portal_owner;
EOSQL
