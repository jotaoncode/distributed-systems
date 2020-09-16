Creation of the volumes associated to a certain folder
docker volume create --driver local --opt type=none --opt device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/data --opt o=bind mysql-data
docker volume create --driver local --opt type=none --opt device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/dump --opt o=bind mysql-dump

To run the docker container with the volumes
docker run -d --name mysql-example --mount type=volume,dst=/dump,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/dump --mount type=volume,dst=/var/lib/mysql,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/data -e MYSQL_ALLOW_EMPTY_PASSWORD=true -d mysql:latest
