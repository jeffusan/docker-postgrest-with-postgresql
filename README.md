docker-postgrest-with-postgresql
--------------------------------

Links together the official Docker image for PostgreSQL and an
up-to-date variant of the one supplied in the PostgREST wiki
(https://github.com/begriffs/postgrest/wiki/Docker)

### Prerequisites

1. Docker
2. Docker Compose

## Local Usage

When using locally, you can access the containers on:
- http://localhost:5432
- http://localhost:80

### Getting Started

To start the containers, run: ```docker-compose up -d```

If you want to define the schema prior to starting the containers,
place the required .sql or .sh files within the _postgresql/scripts_
directory.

### Applying Schema Changes

```
docker-compose stop && docker-compose rm -f
docker-compose build
docker-compose up -d
```
