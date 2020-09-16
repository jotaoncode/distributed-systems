FROM mysql:5.7
COPY init-db.sh ./docker-entrypoint-initdb.d
COPY ./dump/mysql.sql ./docker-entrypoint-initdb.d
