run it
./run.sh

PHPMYADMIN: http://localhost:8080/
Demo REACT: http://localhost:3000/
MySQL: http://localhost:3306/ #not access vie browser access it vie phpmyadmin or container terminal which will be explain below

Turn off container
`docker compose down`

explain
containner is removed
BUT database files remain

=====

Turn off  container  with database get  removed
`docker compose down -v`

explain
volume deleted ❌
all database data lost

================================
to run terminal inside container
`docker exec -it mysql8 bash`
`docker exec -it phpmyadmin sh`

list  available docker container
`docker ps`

================================
to config mysql, edit .env

`
MYSQL_ROOT_PASSWORD=rootpassword
MYSQL_DATABASE=test_database_name
MYSQL_USER=admin
MYSQL_PASSWORD=admin123

DB_PORT=3306
PMA_PORT=8080
`
explain:
PMA is phpmyadmin which is the web-based for accessing mysql database


After change database name: 
`docker compose down -v`
`docker compose up`


Rebuilds Docker images completely from zero
`docker compose build --no-cache`


For frontend make sure to keep these file 
frontend/DockerFile
frontend/.dockerignore
==================================


