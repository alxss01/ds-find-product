#!/bin/bash

source login-docker.sh

app_name="ds-find-product"

#docker_login

sudo docker push alexsouzasilva/$app_name:latest

if [[ $? == 0 ]]; then
    echo  "info:: Publicando Imagem..."
    
else
    echo "error: Falha ao publicar imagem..."
fi

