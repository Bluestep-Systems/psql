FROM ubuntu:24.04
LABEL org.opencontainers.image.source=https://github.com/Bluestep-Systems/bluestep-git
LABEL org.opencontainers.image.description="psql"
ARG PSQL_VERSION=14
RUN apt-get -y update && \
    apt-get -y install lsb-release gnupg wget && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
         echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" | tee  /etc/apt/sources.list.d/pgdg.list && \
    apt-get -y update && \
    apt-get -y install postgresql-client-${PSQL_VERSION} bash && \
    apt-get -y remove wget && \
    apt-get clean

ENTRYPOINT [ "/usr/bin/psql" ]