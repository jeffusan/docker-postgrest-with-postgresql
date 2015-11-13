FROM centos

RUN yum install -y tar wget postgresql-devel

ENV POSTGREST_VERSION 0.2.12.1

RUN wget https://github.com/begriffs/postgrest/releases/download/v${POSTGREST_VERSION}/postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN tar --xz -xvf postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN mv postgrest-${POSTGREST_VERSION} /usr/local/bin/postgrest

CMD postgrest  --db-host db         --db-port 5432     \
               --db-name postgres   --db-user postgres \
               --db-pass foobar     --db-pool 200      \
               --anonymous postgres --port 3000        \
               --v1schema public

EXPOSE 3000
