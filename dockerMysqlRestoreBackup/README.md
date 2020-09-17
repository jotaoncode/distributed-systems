Create the volumes:

Dumps:
docker volume create --driver local --opt type=none --opt device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/dump --opt o=bind mysql-dump

Data:
docker volume create --driver local --opt type=none --opt device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/data --opt o=bind mysql-data

To build it

 docker build . -t mysql-example

To run it with the volumes:

docker run -d --name mysql-example --mount type=volume,dst=/dump,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/dump --mount type=volume,dst=/var/lib/mysql,volume-driver=local,volume-opt=type=none,volume-opt=o=bind,volume-opt=device=/Users/juangarcia/projects/distributed-systems/dockerMysqlRestoreBackup/data -e MYSQL_ROOT_PASSWORD=my-secret-pw -p 3307:3306 -d mysql-example

then you can access to mysql in port 3307 to get the mysql example database with the users table

you can stop the container and run it again and you will get the same values

Provide an example with docker compose defining the volumes to compare how easy it can get.

Make the comparison with PV and PVC of minikube to show a bit how easy is to create those volumes in regards to this configuration.
