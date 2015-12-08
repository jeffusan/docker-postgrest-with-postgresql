docker-postgrest-with-postgresql
--------------------------------

Links together the official Docker image for PostgreSQL and an up-to-date variant of the one supplied in the PostgREST wiki (https://github.com/begriffs/postgrest/wiki/Docker)

### Prerequisites

1. Docker
2. Docker Compose

## Local Usage

When using locally, you can access the containers on:
- http://localhost:5432
- http://localhost:80

### Getting Started

To start the containers, run: ```docker-compose up -d```

If you want to define the schema prior to starting the containers, place the required .sql or .sh files within the _postgresql/scripts_ directory.

### Obtaining Database Backups

```bash
docker exec dockerpostgrestwithpostgresql_db_1 pg_dump -U postgres > postgresql/scripts/create_schema.sql
```

The pg_dump command provided in the example outputs a plain-text file
containing the SQL commands required to restore the database back to
its state at the time the command was run. For more info, see:
http://www.postgresql.org/docs/9.4/static/app-pgdump.html

### Applying Schema Changes

```bash
docker-compose stop && docker-compose rm -f && docker-compose build && docker-compose up -d
```
