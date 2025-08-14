#!/bin/bash

#Colours
g="\e[0;32m\033[1m" #green #code
e="\033[0m\e[0m" #end
r="\e[0;31m\033[1m" #red #error 
b="\e[0;34m\033[1m" #blue #information
y="\e[0;33m\033[1m" #yellow #caracters
p="\e[0;35m\033[1m" #purple #important
t="\e[0;36m\033[1m" #turquoise #highlight
gr="\e[0;37m\033[1m" #gray #unimportant

function ctrl_c(){
    echo -e "\n\n${r}[!] Saliendo...${e}\n"
    tput cnorm; exit 1
}

# Ctrl+C
trap ctrl_c SIGINT

declare -a ports=( $(seq 1 65535) )

function checkPort(){
    (exec 3<> /dev/tcp/$1/$2) 2>/dev/null

    if [ $? -eq 0 ]; then
        echo -e "\n${y}[+]${e} ${gr}Host${e} ${b}$1 ${e}${y}-${e} ${gr}Port${e} ${p}$2 ${e}${g}(OPEN)${e}"
    fi

    exec 3<&-
    exec 3>&-
}

tput civis # Ocultar el cursor

if [ $1 ]; then
    for port in ${ports[@]}; do
        checkPort $1 $port &
    done
else
    echo -e "\n${r}[!]${e} ${gr}Uso:${e} ${p}$0${e} ${y}<ip-address>${e}\n"
fi

wait

tput cnorm

