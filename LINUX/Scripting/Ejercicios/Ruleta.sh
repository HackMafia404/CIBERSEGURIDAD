#!/bin/bash

#Colores
g="\e[0;32m\033[1m" #green #code
e="\033[0m\e[0m" #end
r="\e[0;31m\033[1m" #red #error 
b="\e[0;34m\033[1m" #blue #information
y="\e[0;33m\033[1m" #yellow #caracters
p="\e[0;35m\033[1m" #purple #important
t="\e[0;36m\033[1m" #turquoise #highlight
gr="\e[0;37m\033[1m" #gray #unimportant

trap ctrl_c INT

#Funcion de salida
function ctrl_c(){
  echo -e "\n${r}[!] Abortando Ruleta${e}\n"
  tput cnorm; exit 1
}

function HelPanel(){
  tput civis
  echo -e "\n${y}[+]${e} ${gr}USO:${e} ${p}$0${e}"
  echo -e "\n\t${y}m)${e} ${gr}Inserta dinero${e}"
  echo -e "\t${y}t)${e} ${gr}Tecnica a usar${e}"
  echo -e "\t${y}h)${e} ${gr}Panel de ayuda${e}\n"
}

function martingala(){
  echo -e "\n${y}[+]${e} ${gr}Dinero Actual:${e} ${p}$money${e}"
  echo -ne "\n${y}[+]${e} ${gr}¿Cuanto dinero quieres Apostar?${e} ${y}->${e} " && read inicial
  echo -ne "\n${y}[+]${e} ${gr}¿A que deseas Apostar ${b}(${e}${y}par${e}${p}/${e}${y}impar${e}${b})${e}${y}${gr}?${e} ${y}->${e} " && read par_impar
  echo -e "\n${y}[+]${e} ${gr}Vamos a jugar con${e} ${y}$inicial${e} ${gr}a${e} ${y}$par_impar${e}"
  
  tput civis
  
  while true; do   
    random_number="$(($RANDOM % 37))"
    echo -e "[+] EL numero que ha salido es el $random_number"
    
    if [ "$(($random_number % 2))" -eq 0 ]; then
      if [ "$random_number" -eq 0 ]; then
        echo -e "[+] Juego Perdido"
      else
        echo -e "[+] El numero que ha salido es par"
      fi
    else
      echo -e "[+] El numero que ha salido es impar"
    fi
    sleep 1
  done
   tput cnorm
 }

#Definiendo Menu de parametros
while getopts "m:t:h" arg; do
  case $arg in 
    m) money=$OPTARG;;
    t) tecnica=$OPTARG;;
    h) HelPanel;;
  esac
done

if [ $money ] && [ $tecnica ]; then
  if [ "$tecnica" == "martingala" ]; then
    martingala
  else
    echo -e "\n${r}[+] La tecnica seleccionada es Incorrecta..${e}"
  fi
else
  
  HelPanel
fi

