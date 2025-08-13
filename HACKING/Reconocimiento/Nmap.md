# USO DE HERRAMIENTA NMAP (NETWORK MAPPER)

Nmap es una herramienta de código abierto usada para explorar redes y auditar la seguridad de sistemas.
Su función principal es descubrir hosts y servicios en una red mediante el envío de paquetes especialmente diseñados y el análisis de sus respuestas.

---

## ¿Para qué sirve?

- Descubrir equipos activos en una red (escaneo de hosts).

- Identificar puertos abiertos y servicios que se están ejecutando.

- Detectar versiones de software y sistemas operativos (fingerprinting).

- Auditar la seguridad y encontrar posibles vulnerabilidades.

- Mapear la topología de la red.

---

## ESCANEO 

Escanear una IP sirve para recolectar información sobre un dispositivo o servidor que está conectado a una red.
Básicamente, es como “tocar la puerta” de un sistema para ver qué responde.

- Dependiendo de la técnica usada, puede servir para:

    - Detectar si un host está activo (si la máquina con esa IP está encendida y accesible).

    - Identificar puertos abiertos (y, por ende, los servicios que están corriendo, como HTTP en el 80, SSH en el 22, etc.).

    - Descubrir vulnerabilidades si esos servicios están mal configurados o desactualizados.

    - Mapear la red para saber qué dispositivos hay y cómo están organizados.

---

**Esta es la mejor forma de hacer un escaneo completo de puertos abiertos**

```Bash
nmap -p- --open -T5 -sT 192.168.1.254 -v -n -Pn
```
- -p-

    - scanea todos los puertos TCP (del 1 al 65535).

    - Por defecto, Nmap solo revisa los 1000 más comunes, pero con -p- va a por todos.

- --open

    - Muestra solo los puertos que estén abiertos.

    - Oculta los que estén cerrados o filtrados para simplificar el resultado.

- -T5

    - Ajusta la velocidad/agresividad del escaneo.

    - Los valores van de -T0 (muy lento) a -T5 (muy rápido y agresivo).

    - -T5 es el máximo, pero puede generar mucho ruido en la red y activar alertas en un IDS/IPS.

- -sT

    - TCP Connect Scan: hace la conexión TCP completa (3-way handshake).

    - Es el método más básico y más detectable.

    - Suele usarse cuando no tienes privilegios root (porque no requiere enviar paquetes RAW como en -sS).

- -v

    - Verbose: muestra más información en tiempo real.

    - Puedes usar -vv para aún más detalle.

- -n

    - No realiza resolución DNS inversa.

    - Evita que Nmap intente convertir IP a nombre de dominio, ahorrando tiempo.

- -Pn

    - Desactiva el host discovery (ping inicial).

    - Asume que el host está vivo y va directamente a escanear puertos.

    - Útil cuando el firewall bloquea ICMP o el ping inicial.

>Este comando:
    Escanea los 65535 puertos TCP de la IP 192.168.1.254.
    Solo muestra los puertos abiertos.
    Lo hace de forma rápida y agresiva (-T5).
    Usa el método TCP Connect (-sT).
    No resuelve DNS, ni hace ping previo.
    Muestra información detallada durante el proceso.

---

# TECNICAS DE EVASION DE firewall

Cuando se realizan pruebas de penetración, uno de los mayores desafíos es evadir la detección de los Firewalls, que son diseñados para proteger las redes y sistemas de posibles amenazas. Para superar este obstáculo, Nmap ofrece una variedad de técnicas de evasión que permiten a los profesionales de seguridad realizar escaneos sigilosos y evitar así la detección de los mismos.

1. MTU (–mtu): La técnica de evasión de MTU o “Maximum Transmission Unit” implica ajustar el tamaño de los paquetes que se envían para evitar la detección por parte del Firewall. Nmap permite configurar manualmente el tamaño máximo de los paquetes para garantizar que sean lo suficientemente pequeños para pasar por el Firewall sin ser detectados.

2. Data Length (–data-length): Esta técnica se basa en ajustar la longitud de los datos enviados para que sean lo suficientemente cortos como para pasar por el Firewall sin ser detectados. Nmap permite a los usuarios configurar manualmente la longitud de los datos enviados para que sean lo suficientemente pequeños para evadir la detección del Firewall.

3. Source Port (–source-port): Esta técnica consiste en configurar manualmente el número de puerto de origen de los paquetes enviados para evitar la detección por parte del Firewall. Nmap permite a los usuarios especificar manualmente un puerto de origen aleatorio o un puerto específico para evadir la detección del Firewall.

    Decoy (-D): Esta técnica de evasión en Nmap permite al usuario enviar paquetes falsos a la red para confundir a los sistemas de detección de intrusos y evitar la detección del Firewall. El comando -D permite al usuario enviar paquetes falsos junto con los paquetes reales de escaneo para ocultar su actividad.
    Fragmented (-f): Esta técnica se basa en fragmentar los paquetes enviados para que el Firewall no pueda reconocer el tráfico como un escaneo. La opción -f en Nmap permite fragmentar los paquetes y enviarlos por separado para evitar la detección del Firewall.
    Spoof-Mac (–spoof-mac): Esta técnica de evasión se basa en cambiar la dirección MAC del paquete para evitar la detección del Firewall. Nmap permite al usuario configurar manualmente la dirección MAC para evitar ser detectado por el Firewall.
    Stealth Scan (-sS): Esta técnica es una de las más utilizadas para realizar escaneos sigilosos y evitar la detección del Firewall. El comando -sS permite a los usuarios realizar un escaneo de tipo SYN sin establecer una conexión completa, lo que permite evitar la detección del Firewall.
    min-rate (–min-rate): Esta técnica permite al usuario controlar la velocidad de los paquetes enviados para evitar la detección del Firewall. El comando –min-rate permite al usuario reducir la velocidad de los paquetes enviados para evitar ser detectado por el Firewall.

Es importante destacar que, además de las técnicas de evasión mencionadas anteriormente, existen muchas otras opciones en Nmap que pueden ser utilizadas para realizar pruebas de penetración efectivas y evadir la detección del Firewall. Sin embargo, las técnicas que hemos mencionado son algunas de las más populares y ampliamente utilizadas por los profesionales de seguridad para superar los obstáculos que presentan los Firewalls en la realización de pruebas de penetración.

