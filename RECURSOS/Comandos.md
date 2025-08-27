# COMANDOS HACKING

- Este documento recopila comandos esenciales utilizados en la carrera de Ciberseguridad, organizados por categorías para facilitar su consulta y aprendizaje.
    - El objetivo es disponer de un repositorio práctico que sirva como referencia rápida durante laboratorios y pruebas de penetración (pentesting).

## SISTEMA 

- reinicio de audio de sonido 
    >systemctl --user restart pipewire pipewire-pulse
- Actualizacion del sistema 
    >sudo apt update -y && sudo apt upgrade -y

## DOCKER

- Creacion de primer archivo de configuracion de contenedor 
    >FROM ubuntu:latest
     MAINTAINER mariano diaz 

- Montar en principio y actualizar la image con la info proporcionada en el archivo dockerfile 
    >docker build -t my_fist_image .

- Para listar las images creadas
    >docker images

- Descargar una imagen de un registro de docker
    >docker pull debian:latest 


