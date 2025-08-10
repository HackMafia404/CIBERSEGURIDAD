# PROTOCOLOS TCP - UDP

---

## PROTOCOLO TCP 

- El protocolo TCP, es un protocolo orientado a la **conexion**
    - Proporciona Entrega de datos confiable
- Three-Way-Handshake
    - procedimiento utilizado para establecer una conexión entre dos dispositivos. 
        - Este procedimiento consta de tres pasos: SYN, SYN-ACK y ACK 
            - en los que se sincronizan los números de secuencia y de reconocimiento de los paquetes entre los dispositivos. 
    - El Three-Way Handshake es fundamental para establecer una conexión confiable y segura a través de TCP.

### PUERTOS TCP COMUNES

- 20: FTP-DATA (FTP: File Transfer Protocol) 
    - Transferencia de datos en FTP  
- 21: FTP (FTP: File Transfer Protocol)
    - Protocolo para transferir archivos  
- 22: SSH (SSH: Secure Shell)
    - Acceso remoto seguro cifrado  
- 23:Telnet (Teletype Network}
    - Acceso remoto sin cifrar (obsoleto)  
- 25: SMTP (SMTP: Simple Mail Transfer Protocol)
    - Envío de correos electrónicos  
- 53: DNS (TCP) (DNS: Domain Name System)
    - Resolución de nombres de dominio  
- 80: HTTP (HTTP: HyperText Transfer Protocol)
    - Tráfico web no cifrado  
- 110: POP3 (POP: Post Office Protocol v3)
    - Recepción de correo electrónico  
- 143: IMAP (IMAP: Internet Message Access Protocol)
    - Gestión y recepción de correo  
- 443: HTTPS (HTTPS: HyperText Transfer Protocol Secure)
    - Tráfico web cifrado con SSL/TLS  
- 465: SMTPS (SMTPS: Simple Mail Transfer Protocol Secure)
    - SMTP cifrado con SSL/TLS  
- 587: SMTP (Submission) (SMTP: Simple Mail Transfer Protocol)
    - Envío de correos autenticados  
- 993: IMAPS (IMAPS: Internet Message Access Protocol Secure) 
    - IMAP cifrado  
- 995: POP3S (POP3S: Post Office Protocol 3 Secure)
    - POP3 cifrado  
- 3306: MySQL (MySQL: My Structured Query Language)
    - Base de datos MySQL  
- 3389: RDP (RDP: Remote Desktop Protocol)
    - Escritorio remoto Windows  
- 5432: PostgreSQL (PostgreSQL: Postgres Structured Query Language)
    - Base de datos PostgreSQL  
- 5900: VNC (VNC: Virtual Network Computing)
    - Control remoto de escritorio  
- 8080: HTTP-alt (HTTP: HyperText Transfer Protocol)
    - Servidor web alternativo o proxy

---

## PROTOCOLO UDP

- El protocolo UDP (User Datagram Protocol) 
    - es un protocolo de la capa de transporte que envía datos en forma de datagramas
    - sin establecer una conexión previa y sin verificar su entrega o integridad
    - lo que lo hace muy rápido y eficiente para aplicaciones que requieren baja latencia
        - streaming en vivo
        - juegos en línea
        - DNS
        - comunicaciones de voz sobre IP.

### PROTOCOLOS UDP COMUNES

- 53: DNS (DNS: Domain Name System)
    - Resolución de nombres de dominio  
- 67: DHCP Server (DHCP: Dynamic Host Configuration Protocol)
    - Asigna direcciones IP a clientes  
- 68: DHCP Client (DHCP: Dynamic Host Configuration Protocol)
    - Solicita dirección IP al servidor  
- 69: TFTP (TFTP: Trivial File Transfer Protocol)
    - Transferencia de archivos simple sin autenticación  
- 123: NTP (NTP: Network Time Protocol)
    - Sincronización de hora en red  
- 137: NetBIOS Name Service (NetBIOS: Network Basic Input/Output System)
    - Resolución de nombres en redes Windows  
- 138: NetBIOS Datagram Service (NetBIOS: Network Basic Input/Output System)
    - Comunicación por datagramas en redes Windows  
- 139: NetBIOS Session Service (NetBIOS: Network Basic Input/Output System)
    - Sesiones en redes Windows  
- 161: SNMP (SNMP: Simple Network Management Protocol)
    - Monitoreo y gestión de dispositivos de red  
- 162: SNMP Trap (SNMP: Simple Network Management Protocol)
    - Recepción de alertas de dispositivos de red  
- 389: LDAP (LDAP: Lightweight Directory Access Protocol)
    - Acceso a servicios de directorio  
- 500: ISAKMP (ISAKMP: Internet Security Association and Key Management Protocol)
    - Intercambio de claves para VPN IPsec  
- 514: Syslog (Syslog)
    - Registro y envío de logs en red  
- 520: RIP (RIP: Routing Information Protocol)
    - Enrutamiento dinámico en redes  
- 623: IPMI (IPMI: Intelligent Platform Management Interface)
    - Gestión remota de hardware de servidores  
- 1434: MS-SQL Monitor (Microsoft SQL Monitor)
    - Descubrimiento de instancias SQL Server  
- 1900: SSDP (SSDP: Simple Service Discovery Protocol)
    - Descubrimiento de dispositivos UPnP  
- 4500: NAT-T (NAT Traversal)
    - Encapsulación de IPsec para atravesar NAT  
- 5353: mDNS (mDNS: Multicast DNS)
    - Resolución de nombres en redes locales

> Cabe destacar que estos son solo algunos de los más comunes. 
Existen muchos más puertos los cuales operan tanto por TCP como por UDP.
