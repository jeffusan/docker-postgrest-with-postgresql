docker-postgrest-with-postgresql
--------------------------------

For some reason, when using docker-compose on OSX/with docker-machine/boot2docker, the postgrest containers steadfastly refused 
to connect to the db container. So I wrote a little bash script to replace the docker-compose.yml

Links together the official Docker image for PostgreSQL and an up-to-date variant of the one supplied in the PostgREST wiki (https://github.com/begriffs/postgrest/wiki/Docker)

### Prerequisites

1. Docker
2. Docker Compose

## Local Usage

You can access the containers on:
- http://$(docker-machine ip):5432
- http://$(docker-machine ip):80

### Getting Started

To start the containers, run: ```./runDockerBuild```

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
