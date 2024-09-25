#!/bin/bash

app_name="ds-find-product"

mvn clean install

docker_build() {
    docker build -t alexsouzasilva/$app_name:latest .
    if [[ $? == 0 ]]; then
        echo "info:: docker build realizado com sucesso"
    else
        echo "error: falha docker build"
        exit 1
    fi
}

if [[ $? == 0 ]]; then
    echo "info:: build realizado com scuesso."
    docker_build
else
    echo "error:: build com falha"
    exit 1
fi