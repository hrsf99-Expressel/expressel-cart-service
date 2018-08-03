FROM mysql:5.7

WORKDIR /docker-entrypoint-initdb.d

COPY ./dump.sql /docker-entrypoint-initdb.d

ENV MYSQL_DATABASE=expressel \
    MYSQL_ALLOW_EMPTY_PASSWORD='yes'
