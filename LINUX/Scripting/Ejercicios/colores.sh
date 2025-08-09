#!/bin/bash

# ===== COLORES =====

# Colores básicos
blackColour="\e[0;30m\033[1m"
whiteColour="\e[1;37m\033[1m"

# Colores brillantes
brightRedColour="\e[1;31m\033[1m"
brightGreenColour="\e[1;32m\033[1m"
brightYellowColour="\e[1;33m\033[1m"
brightBlueColour="\e[1;34m\033[1m"
brightPurpleColour="\e[1;35m\033[1m"
brightCyanColour="\e[1;36m\033[1m"
brightWhiteColour="\e[1;37m\033[1m"

# Colores de fondo
bgBlackColour="\e[40m\033[1m"
bgRedColour="\e[41m\033[1m"
bgGreenColour="\e[42m\033[1m"
bgYellowColour="\e[43m\033[1m"
bgBlueColour="\e[44m\033[1m"
bgPurpleColour="\e[45m\033[1m"
bgCyanColour="\e[46m\033[1m"
bgWhiteColour="\e[47m\033[1m"

# Colores subrayados
underlineRedColour="\e[4;31m\033[1m"
underlineGreenColour="\e[4;32m\033[1m"
underlineYellowColour="\e[4;33m\033[1m"
underlineBlueColour="\e[4;34m\033[1m"
underlinePurpleColour="\e[4;35m\033[1m"
underlineCyanColour="\e[4;36m\033[1m"
underlineWhiteColour="\e[4;37m\033[1m"

# Colores parpadeantes
blinkRedColour="\e[5;31m\033[1m"
blinkGreenColour="\e[5;32m\033[1m"
blinkYellowColour="\e[5;33m\033[1m"
blinkBlueColour="\e[5;34m\033[1m"
blinkPurpleColour="\e[5;35m\033[1m"
blinkCyanColour="\e[5;36m\033[1m"
blinkWhiteColour="\e[5;37m\033[1m"

# Colores personalizados
orangeColour="\e[38;5;208m\033[1m"
pinkColour="\e[38;5;205m\033[1m"
lightBlueColour="\e[38;5;45m\033[1m"
darkGreenColour="\e[38;5;22m\033[1m"

# Reset
endColour="\033[0m\e[0m"

# ===== FUNCIÓN PARA MOSTRAR COLORES =====
function mostrar_color() {
    local varName="$1"
    local colorValue="${!varName}"
    echo -e "${colorValue}${varName}${endColour}"
}

# ===== LISTA DE VARIABLES A MOSTRAR =====
colores=(
    blackColour whiteColour
    brightRedColour brightGreenColour brightYellowColour brightBlueColour brightPurpleColour brightCyanColour brightWhiteColour
    bgBlackColour bgRedColour bgGreenColour bgYellowColour bgBlueColour bgPurpleColour bgCyanColour bgWhiteColour
    underlineRedColour underlineGreenColour underlineYellowColour underlineBlueColour underlinePurpleColour underlineCyanColour underlineWhiteColour
    blinkRedColour blinkGreenColour blinkYellowColour blinkBlueColour blinkPurpleColour blinkCyanColour blinkWhiteColour
    orangeColour pinkColour lightBlueColour darkGreenColour
)

# ===== MOSTRAR TODOS LOS COLORES =====
for color in "${colores[@]}"; do
    mostrar_color "$color"
done

