FROM centos

RUN yum install -y tar wget postgresql-devel

ENV POSTGREST_VERSION 0.3.0.4

RUN wget https://github.com/begriffs/postgrest/releases/download/v${POSTGREST_VERSION}/postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN tar --xz -xvf postgrest-${POSTGREST_VERSION}-centos.tar.xz
RUN mv postgrest /usr/local/bin/postgrest

COPY waitForPostgresqlConnection.sh /
ENTRYPOINT ["/waitForPostgresqlConnection.sh"]

EXPOSE 3000
