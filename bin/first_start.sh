#!/bin/bash

docker-compose exec backend composer install

echo "CAMBIANDO PERMISOS: ...."

docker-compose exec backend chmod 777 ./web/assets -R &&\
  echo "+Permiso modificado a ./web/assets" &&\
  docker-compose exec backend chmod 777 ./runtime -R && \
  echo "+Permoso modificado a ./runtime" &&\
  echo "PERMISOS MODIFICADOS CORRECTAMENTE!"
