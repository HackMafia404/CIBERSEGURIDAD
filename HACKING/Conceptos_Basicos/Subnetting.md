# SUBNETTING

---

- Subnetting es una técnica utilizada para dividir una red IP en subredes más pequeñas y manejables. 
    - Esto se logra mediante el uso de máscaras de red. 
        - permiten definir qué bits de la dirección IP corresponden a la red y cuáles a los hosts.

- Para interpretar una máscara de red, se deben identificar los bits que están en “1“. 
    - Estos bits representan la porción de la dirección IP que corresponde a la red. 
        - una máscara de red de 255.255.255.0 indica que los primeros tres octetos de la dirección IP corresponden a la red 
            - el último octeto se utiliza para identificar los hosts.

- Cuando hablamos de CIDR (acrónimo de Classless Inter-Domain Routing)
    - Es a un método de asignación de direcciones IP más eficiente y flexible que el uso de clases de redes IP fijas.
        - Con CIDR, una dirección IP se representa mediante una dirección IP base y una máscara de red, que se escriben juntas separadas por una barra (/).
            - Por ejemplo, la dirección IP 192.168.1.1 con una máscara de red de 255.255.255.0 se escribiría como 192.168.1.1/24.

- La máscara de red se representa en notación de prefijo 
    - indica el número de bits que están en “1” en la máscara. 
        - En este caso, la máscara de red 255.255.255.0 tiene 24 bits en “1”.

- Para calcular la máscara de red a partir de una notación de prefijo
    - se deben escribir los bits “1” en los primeros bits de una dirección IP de 32 bits y los bits “0” en los bits restantes. 
        - Por ejemplo, la máscara de red /24 se calcularía como 11111111.11111111.11111111.00000000 en binario
            - lo que equivale a 255.255.255.0 en decimal.

---

## CIDR

- CIDRs (Classless Inter-Domain Routing) 
    - método de asignación de direcciones IP que permite dividir una dirección IP en una parte que identifica la red y otra parte que identifica el host. 
        - Esto se logra mediante el uso de una máscara de red, que se representa en notación CIDR como una dirección IP base seguida de un número que indica la cantidad de bits que corresponden a la red.

- Con CIDR, se pueden asignar direcciones IP de forma más precisa
    - lo que reduce la cantidad de direcciones IP desperdiciadas y facilita la administración de la red.

- El número que sigue a la dirección IP base en la notación CIDR se llama prefijo o longitud de prefijo 
    - representa el número de bits en la máscara de red que están en “1“.

        > Por ejemplo, una dirección IP con un prefijo de /24 indica que los primeros 24 bits de la dirección IP corresponden a la red 
        > mientras que los 8 bits restantes se utilizan para identificar los hosts.

- Para calcular la cantidad de hosts disponibles en una red CIDR 
    - se deben contar el número de bits “0” en la máscara de red y elevar 2 a la potencia de ese número. 
        - Esto se debe a que cada bit “0” en la máscara de red representa un bit que se puede utilizar para identificar un host.

            > Por ejemplo, una máscara de red de 255.255.255.0 (/24) tiene 8 bits en “0“, lo que significa que hay 2^8 = 256 direcciones IP disponibles para los hosts en esa red.

---
- Las redes de clase A usan una máscara de subred predeterminada de 255.0.0.0 y tienen de 0 a 127 como su primer octeto. 
    - La dirección 10.52.36.11, por ejemplo, es una dirección de clase A. Su primer octeto es 10, que está entre 1 y 126, ambos incluidos.
- Las redes de clase B usan una máscara de subred predeterminada de 255.255.0.0 y tienen de 128 a 191 como su primer octeto. 
    - La dirección 172.16.52.63, por ejemplo, es una dirección de clase B. Su primer octeto es 172, que está entre 128 y 191, ambos inclusive.
- Las redes de clase C usan una máscara de subred predeterminada de 255.255.255.0 y tienen de 192 a 223 como su primer octeto. 
    - La dirección 192.168.123.132, por ejemplo, es una dirección de clase C. Su primer octeto es 192, que está entre 192 y 223, ambos incluidos.
---

> Una dirección IP con un prefijo de /28 (255.255.255.240) permite hasta 16 direcciones IP para los hosts (2^4), ya que los primeros 28 bits corresponden a la red.

> Una dirección IP con un prefijo de /26 (255.255.255.192) permite hasta 64 direcciones IP para los hosts (2^6), ya que los primeros 26 bits corresponden a la red.

> Una dirección IP con un prefijo de /22 (255.255.252.0) permite hasta 1024 direcciones IP para los hosts (2^10), ya que los primeros 22 bits corresponden a la red.





