#!/bin/bash

# Colores ANSI
CRE='\033[31m'  # Rojo
CYE='\033[33m'  # Amarillo
CGR='\033[32m'  # Verde
CBL='\033[34m'  # Azul
CBLE='\033[36m' # Cyan
CBK='\033[37m'  # Blanco
CGY='\033[38m'  # Gris
BLD='\033[1m'   # Negrita
CNC='\033[0m'   # Resetear colores

printf "\n"
printf "\t                   ${CRE} ##       ${CBK} .         \n"
printf "\t             ${CRE} ## ## ##      ${CBK} ==         \n"
printf "\t           ${CRE}## ## ## ##      ${CBK}===         \n"
printf "\t       /\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\\\___/ ===       \n"
printf "\t  ${CBL}~~~ ${CBK}{${CBL}~~ ~~~~ ~~~ ~~~~ ~~ ~ ${CBK}/  ===- ${CBL}~~~${CBK}\n"
printf "\t       \\\______${CBK} o ${CBK}         __/           \n"
printf "\t         \\\    \\\        __/            \n"
printf "\t          \\\____\\\______/               \n"
printf "${BLD}${CBLE}                                          \n"
printf "  ___  ____ ____ _  _ ____ ____ _    ____ ___  ____ \n"
printf "  |  \ |  | |    |_/  |___ |__/ |    |__| |__] [__  \n"
printf "  |__/ |__| |___ | \_ |___ |  \ |___ |  | |__] ___] \n"                                          
printf "${CNC}                                         \n"
printf "\t\t\t\t  ${CRE} ${CNC}${CYE} ${text}${CNC} ${CRE}${CNC}\n"

# Banner hecho por Ch4rum - https://instagram.com/ch4rum

# Recorre cada uno de los nombres proporcionados como parámetros
for name in "$@"; do
    base_name=$(basename "$name" .tar)

    image_id=$(docker images -q "$base_name")
    if [ ! -z "$image_id" ]; then
        echo -e "\e[38;5;230;1mSe han detectado máquinas de DockerLabs previas, debemos limpiarlas para evitar problemas, espere un momento...\e[0m"
        container_ids=$(docker ps -a -q --filter "ancestor=$image_id")
        if [ ! -z "$container_ids" ]; then
            docker stop $container_ids > /dev/null 2>&1
            docker rm $container_ids > /dev/null 2>&1
        fi
    fi

    container_ids=$(docker ps -aq --filter "id=5938*")
    if [ ! -z "$container_ids" ]; then
        echo -e "\e[38;5;230;1mSe han detectado máquinas de DockerLabs previas, debemos limpiarlas para evitar problemas, espere un momento...\e[0m"
        docker stop $container_ids > /dev/null 2>&1
        docker rm $container_ids > /dev/null 2>&1
    fi
done

for name in "$@"; do
    base_name=$(basename "$name" .tar)

    image_id=$(docker images -q "$base_name")
    if [ ! -z "$image_id" ]; then
        echo -e "\e[38;5;230;1mSe han detectado máquinas de DockerLabs previas, debemos limpiarlas para evitar problemas, espere un momento...\e[0m"
        docker rmi -f "$image_id" > /dev/null 2>&1
    fi
done

detener_y_eliminar_contenedor() {
    IMAGE_NAME="${TAR_FILE%.tar}"
    CONTAINER_NAME="${IMAGE_NAME}_container"

    if [ "$(docker ps -a -q -f name=$CONTAINER_NAME -f status=exited)" ]; then
        
        docker rm $CONTAINER_NAME > /dev/null
    fi

    
    if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
        
        docker stop $CONTAINER_NAME > /dev/null

        docker rm $CONTAINER_NAME > /dev/null
    fi

    if [ "$(docker images -q $IMAGE_NAME)" ]; then
        docker rmi $IMAGE_NAME > /dev/null
    fi
}

trap ctrl_c INT

function ctrl_c() {
    echo -e "\e[1mEliminando el laboratorio, espere un momento...\e[0m"
    detener_y_eliminar_contenedor
    echo -e "\nEl laboratorio ha sido eliminado por completo del sistema."
    exit 0
}

if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo_tar>"
    exit 1
fi

if ! command -v docker &> /dev/null; then
    echo -e "\033[1;36m\nDocker no está instalado. Instalando Docker...\033[0m"
    sudo apt update
    sudo apt install docker.io -y
    echo -e "\033[1;36m\nEstamos habilitando el servicio de docker. Espere un momento...\033[0m"
    sleep 10
    systemctl restart docker && systemctl enable docker
    if [ $? -eq 0 ]; then
        echo "Docker ha sido instalado correctamente."
    else
        echo "Error al instalar Docker. Por favor, verifique y vuelva a intentarlo."
        exit 1
    fi
fi

TAR_FILE="$1"

echo -e "\e[1;93m\nEstamos desplegando la máquina vulnerable, espere un momento.\e[0m"
detener_y_eliminar_contenedor
docker load -i "$TAR_FILE" > /dev/null


if [ $? -eq 0 ]; then

    IMAGE_NAME=$(basename "$TAR_FILE" .tar) # Obtiene el nombre del archivo sin la extensión .tar
    CONTAINER_NAME="${IMAGE_NAME}_container"

    if uname -a | grep -q arm; then # Línea para hacer compatibles los equipos de procesadores Mac OS (Agradecimientos a https://github.com/DanielDominguezBender/)
        apt install --assume-yes binfmt-support qemu-user-static -y > /dev/null
        docker run --platform linux/amd64 -d --name $CONTAINER_NAME $IMAGE_NAME > /dev/null
    else
        docker run -d --name $CONTAINER_NAME $IMAGE_NAME > /dev/null
    fi

    IP_ADDRESS=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_NAME)

    echo -e "\e[1;96m\nMáquina desplegada, su dirección IP es --> \e[0m\e[1;97m$IP_ADDRESS\e[0m"
    echo -e "\e[1;91m\nPresiona Ctrl+C cuando termines con la máquina para eliminarla\e[0m"

else
    echo -e "\e[91m\nHa ocurrido un error al cargar el laboratorio en Docker.\e[0m"
    exit 1
fi

# Espera indefinida para que el script no termine.
while true; do
    sleep 1
done
