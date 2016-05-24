#----------- Generic stuff ---------
FROM debian:stable
MAINTAINER Jeff Hemminger<jeff@kropek.org>

RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN dpkg-divert --local --rename --add /sbin/initctl

ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

RUN apt-get -y update
RUN apt-get -y install ca-certificates rpl pwgen

#------ Application Specific Stuff -------------------

RUN apt-get install -y postgresql-9.4-postgis-2.1 postgis netcat
ADD postgres.conf /etc/supervisor/conf.d/postgres.conf

EXPOSE 5432

ADD setup.sh /setup.sh
RUN chmod 755 /setup.sh
RUN /setup.sh

ADD start-postgis.sh /start-postgis.sh
RUN chmod 755 /start-postgis.sh

CMD /start-postgis.sh
