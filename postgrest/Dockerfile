FROM centos

RUN yum install -y tar wget postgresql-devel

ENV POSTGREST_VERSION 0.3.1.1

RUN wget https://github.com/begriffs/postgrest/releases/download/v${POSTGREST_VERSION}/postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN tar --xz -xvf postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN mv postgrest /usr/local/bin/postgrest

CMD postgrest  postgres://postgres:foobar@db:5432/postgres \
               --port 3000 \
               --schema public \
               --anonymous postgres \
               --pool 200

EXPOSE 3000
