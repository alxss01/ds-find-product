#/bin/bash

docker_login() {
    docker login --username alexsouzasilva

    if [[ $? == 0 ]]; then
        echo "info:: Docker login realizado com sucesso"
    else
        echo "error: Falha no docker login..."
    fi
}


