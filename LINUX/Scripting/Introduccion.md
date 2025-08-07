# Scripting en Bash

El lenguage de comandos bash es utilizado en linux para automatizar tareas, crear herramientas y moverte por consola

## ¿Donde se usan los Scripts?

- Automatizar tareas del sistema
    - Actualizaciones
    - Descargas 
    - Copia de repositorios en GitHub
- Creacion de herramientas
    - Scanners
- Configurar Entornos de Desarrollo
- Probar servidores en redes

## Estructura basica de un Script 

```Bash
#!/bin/bash

function ctrl_c(){
    echo -e "[!] Exiting..."
    tput cnorm; exit 
}

echo -e "Hola Mundo"
```

