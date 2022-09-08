#!/bin/bash

#correr exports desde la misma shell que ejecute el script, remplazando XXXXXXXX como corresponda 

#APP
# export user_docker=XXXXXX
# export passwd_docker=XXXXXX


PS3='Please enter your choice: '
options=(
        "Crear imagenes, levantar contenedores"
        "Eliminar recursos"
        "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Crear imagenes, levantar contenedores") 
            echo "########################"
            echo "Crea imagenes Docker"
            echo "########################"
            cd src
            docker build -t nelsonflorez11/nodebootcamp:1.0 .
            docker run -d --name web -p 8888:8888 nelsonflorez11/nodebootcamp:1.0
            docker login -u $user_docker -p $passwd_docker docker.io               
            docker push nelsonflorez11/nodebootcamp:1.0           
            ;;
        "Eliminar recursos")
            docker stop $(docker ps -a -q)
            docker rm $(docker ps -a -q)
            docker rmi -f $(docker images -a -q)
            echo "########################"
            echo "Se borraron todos los contenedores e imagenes"            
            echo "#########################"
            ;;            
        "Quit") 
            break ;;
        *) echo "invalid option $REPLY";;
    esac
done








 













