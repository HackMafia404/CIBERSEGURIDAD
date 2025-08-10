# DIRECCIONES IP Y MAC

## Direcciones IP (ipv4/ipv6)

Las direcciones IP son identificadores numéricos únicos que se utilizan para identificar dispositivos en una red, como ordenadores, routers, servidores y otros dispositivos conectados a Internet.

---

**Existen dos versiones de direcciones IP:** 

- IPv4 
    - Utiliza un formato de dirección de 32 bits y se utiliza actualmente en la mayoría de las redes. 
    - Se representan como cuatro numeros separados por un punto: **192.168.0.1** 
   
   ```Bash
    echo "$(echo "obase=2; 192" | bc ).$(echo "obase=2; 168" | bc).$(echo "obase=2; 0" | bc).$(echo "obase=2; 1" | bc)"
11000000.10101000.0.1
    ```
---

- IPv6 
    - Utiliza un formato de dirección de 128 bits 
    - Se está implementando gradualmente en todo el mundo para hacer frente a la escasez de direcciones IPv4.
    - Se representan con notacion **Hexadecimal** como: **2001:0db8:853d:0000:0000:8a2e:037c:7334**

---

## Direcciones MAC

- La dirección MAC es un número hexadecimal de 12 dígitos (número binario de 6 bytes), que 
    - está representado principalmente por notación hexadecimal de dos puntos.
- Los primeros 6 dígitos (00:40:96) del MAC Address ***identifican al fabricante***, llamado **OUI** (Identificador Único Organizacional). 
    - El Comité de la Autoridad de Registro de **IEEE** asigna estos prefijos MAC a sus proveedores registrados.
- Los seis dígitos más a la derecha representan el controlador de interfaz de red, que es asignado por el fabricante.

Es decir, los primeros 3 bytes (24 bits) representan el fabricante de la tarjeta, y los últimos 3 bytes (24 bits) identifican la tarjeta particular de ese fabricante. Cada grupo de 3 bytes se puede representar con 6 dígitos hexadecimales, formando un número hexadecimal de 12 dígitos que representa la MAC completa.
 
```Bash
❯ macchanger -l | sort | tail -n 20
9984 - 00:27:f8 - Brocade Communications Systems, Inc.
9985 - 00:2a:6a - CISCO SYSTEMS, INC.
9986 - 00:2a:af - LARsys-Automation GmbH
9987 - 00:2d:76 - TITECH GmbH
9988 - 00:30:00 - ALLWELL TECHNOLOGY CORP.
9989 - 00:30:01 - SMP
9990 - 00:30:02 - Expand Networks
9991 - 00:30:03 - Phasys Ltd.
9992 - 00:30:04 - LEADTEK RESEARCH INC.
9993 - 00:30:05 - Fujitsu Siemens Computers
9994 - 00:30:06 - SUPERPOWER COMPUTER
9995 - 00:30:07 - OPTI, INC.
9996 - 00:30:08 - AVIO DIGITAL, INC.
9997 - 00:30:09 - Tachion Networks, Inc.
9998 - 00:30:0a - AZTECH Electronics Pte Ltd
9999 - 00:30:0b - mPHASE Technologies, Inc.
Misc MACs:
Num    MAC        Vendor
Num    MAC        Vendor
Wireless MACs:
```


