#!/bin/sh
su -c "
    while ! psql --host=${db} --username=postgres > /dev/null 2>&1; do
        echo 'Waiting for webappservicedb connection with postgres...'
        sleep 1;
    done;
    echo 'Connected to postgres...';"
su -c "postgrest postgres://postgres:postgres@db:5432 \
           --port 3000 \
           --schema public \
           --anonymous postgres \
           --pool 200"
