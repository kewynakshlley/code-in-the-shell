#!/bin/bash
AUX=$1
LOGS_DIR=logs
if [ ! -d "$LOGS_DIR" ]; then
    mkdir "$LOGS_DIR"
fi
docker run --name $AUX -d -p 80:80 nginx #executa container em detach
curl localhost:80 #comando usado apenas para gerar logs container
docker logs $AUX > "logs/${AUX}-$(date +"%Y_%m_%d_%I_%M_%p").log" #salva logs em /logs
docker exec $AUX ls #executa comando dentro do container em detach
docker stop $AUX #para container
docker rm $AUX  #exclui container
