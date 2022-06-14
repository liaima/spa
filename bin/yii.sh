#!/bin/bash

docker-compose exec backend yii $@

if [ $1 == migrate/create ] 
then
  echo "Cambiando Propietarios de ./migrations ..."
  docker-compose exec backend /bin/sh -c "chown \$PHP_USER_ID:\$PHP_USER_ID ./migrations -R" &&\
   echo "Propietario modificado"
fi
docker-compose exec backend ls -l ./migrations
