# Creacion de Ruleta de casino

Existen varias estrategias y técnicas que supuestamente se encargan de ‘vencer‘ a la ruleta de los casinos, alguna de ellas son las siguientes:

- Martingala
- D’Alembert 
- Secuencia de Fibonacci
- Paroli
- Óscar Grind
- Guetting
- Labouchere
- Inverse Labouchere

vamos a programar 2 de las técnicas más comunes para ver si realmente son eficaces o si al final terminamos perdiendo todo nuestro dinero.

Para ello tendremos que definir un sistema que nos permita controlar las pérdidas y las ganancias en Bash, haciendo uso para ello de Arrays entre otras cosas. Asimismo, tendremos que definir una lógica que nos permita simular jugadas, con el objetivo de que todo se acontezca de forma automatica.

## Tecnica Martingala

La técnica Martingala es una estrategia matemática de apuesta que se basa en la probabilidad y progresión geometrica. Se originó en Francia en el siglo XVIII y se ha usado comúnmente en juegos de azar como la ruleta.

**La Tecnica Martingala parte del principio:**

>"Tarde o Temprano ganaras y esa ganancia cubrira todas tus perdidas anteriores; mas una ganancia igual a la primera apuesta"


### Creacion del Script

- **Inicio**
    - **colores**
    ```Bash
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

    #Colores parpadeantes

    blinkRedColour="\e[5;31m\033[1m" 
    blinkGreenColour="\e[5;32m\033[1m" 
    blinkYellowColour="\e[5;33m\033[1m" 
    blinkBlueColour="\e[5;34m\033[1m" 
    blinkPurpleColour="\e[5;35m\033[1m" 
    blinkCyanColour="\e[5;36m\033[1m" 
    blinkWhiteColour="\e[5;37m\033[1m" 

    # Colores personalizados (mezclas)

    orangeColour="\e[38;5;208m\033[1m"
    Naranja pinkColour="\e[38;5;205m\033[1m" 
    lightBlueColour="\e[38;5;45m\033[1m"
    darkGreenColour="\e[38;5;22m\033[1m"
    ```
    - **Salida forzada**
    ```Bash
    function ctrl_c(){
    echo -e "\n${r}[!] Abortando Ruleta...${e}"
    tput cnorm; exit 1
    }

    trap ctrl_c
    ```
- **Menu de parametros**
    - **Uso de Getopts**
    En bash el uso de "Getopts" se usa para definir parametros de la herramienta en cuestion
    
    ```Bash
    while getopts "hm:t:" arg; do 
    case $arg in 
      m) money=$OPTARG;;
      t) technique=$OPTARG;;
      h) Helpanel
    esac
   done
   ```

- **Condicionales del Menu**
 
```Bash
  if [ $money ] && [ $technique ]; then
   if [ "$technique" == "martingala" ]; then
    martingala
  else
    echo -e "\n\t${r}[!] The technique is incorrect${e}"
    Helpanel
    exit 1
   fi 
   else
    Helpanel  
  fi
    ```
- **Creacion del Panel de ayuda del Script**

    Cuando se Introduzca un parametro incorrecto u opcion ilegal, el script mandara el flujo del programa al panel de ayuda
    ```Bash
    function Helpanel(){
  tput civis
  echo -e "\n${y}[+]${e} ${gr}USO:${e} ${p}$0${e}\n"
  echo -e "\t${y}-m)${e} ${gr}Dinero con el que se desea jugar${e}"
  echo -e "\t${y}-t)${e} ${gr}Tecnica a utilizar${e} ${p}(${e}${y}martingala${e}${b}/${e}${y}inverselabrouchere${e}${p})${e}"
  tput cnorm; exit 1
}
    ```
- **Creacion de La primer funcion de la Tecnica**

    En este apartado se definira la funcion relacionada a la primera tecnica de la ruleta; La cual sera [Martingala](https://www-investopedia-com.translate.goog/terms/m/martingalesystem.asp?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc) 

```Bash
function martingala(){
  echo -e "${y}[+]${e} Dinero Actual: $money"
  echo -n "[+] Cuanto dinero tienes pensado apostar -> " && read initial_bed
  echo -n "[+] ¿A que deseas apostar continuamente (par/impar)? -> " && read par_impar
  echo -e "[+] Vamos a jugar con una cantidad de $initial_bed$ a $par_impar"
   tput civis
```

- **Numero Aleatorio**
    
    para determinar un numero aleatorio [Ejecutamos:]()
    
    ```Bash
    echo $(($RANDOM % 37))
    ```
- **Bucle de Iteracion de numeros Randoms**

    ```Bash
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
    ```






















