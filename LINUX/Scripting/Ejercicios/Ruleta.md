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
    g="\e[0;32m\033[1m"
    e="\033[0m\e[0m"
    r="\e[0;31m\033[1m"
    b="\e[0;34m\033[1m"
    y="\e[0;33m\033[1m"
    p="\e[0;35m\033[1m"
    t="\e[0;36m\033[1m"
    gr="\e[0;37m\033[1m"
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























