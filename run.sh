#!/bin/bash

sleep 0.1
echo "███████████   █████████                               "
sleep 0.1
echo " ░░███░░░░░███ ███░░░░░███                              "
sleep 0.1
echo " ░███    ░███░███    ░███ ████████    ██████  ████████  "
sleep 0.1
echo " ░██████████ ░███████████░░███░░███  ███░░███░░███░░███ "
sleep 0.1
echo " ░███░░░░░███░███░░░░░███ ░███ ░███ ░███████  ░███ ░░░ "
sleep 0.1
echo " ░███    ░███░███    ░███ ░███ ░███ ░███░░░   ░███     "
sleep 0.1
echo " ███████████ █████   █████████ █████░░██████  █████   "
sleep 0.1
echo " ░░░░░░░░░░░ ░░░░░   ░░░░░░░░░ ░░░░░  ░░░░░░  ░░░░░  "
sleep 0.1
echo "                                             "
sleep 0.1
echo "           ███████████  ██████████          "
sleep 0.1
echo "          ░░███░░░░░███░░███░░░░░█         "
sleep 0.1
echo "           ░███    ░███ ░███  █ ░         "
sleep 0.1
echo "  ██████████░██████████  ░██████         "
sleep 0.1
echo "  ░░░░░░░░░░ ░███░░░░░░   ░███░░█       "
sleep 0.1
echo "           ░███         ░███ ░   █     "
sleep 0.1
echo "           █████        ██████████    "
sleep 0.5
echo "          ░░░░░        ░░░░░░░░░░   "

while true; do
    
    echo "Selecciona una opción:"
    echo "1. requirimientos y poner la ruta del archivo"
    echo "2. eliminar el baner por defecto de Termux"
    echo "3. run"
    echo "4. Salir"
    
    read opcion
    
    case $opcion in
        1)  
            apt update
            apt upgrade
            pkg update
            pkg upgrade
            apt install python
            apt install python2
            apt install python3
            pkg install python-pillow
            pip install pillow
            pip install ascii-wizard
            echo "Has seleccionado la Opción 1."

            # Nombre del archivo Python
            archivo="mi_script.py"

            # Ruta completa del archivo
            ruta_archivo="$HOME/$archivo"

            echo "Escribe la ruta de la imagen"
            read imagen

            # Contenido que deseas agregar al archivo
            contenido="
            import ascii_wizard
            import os
            img = ascii_wizard.AsciiWizard(\"$imagen\")
            img.colored(50, 2.2, None, None, True)
            "

            # Verificar si el archivo ya existe
            if [ -f "$ruta_archivo" ]; then
                # Agregar el contenido al archivo Python
                echo "$contenido" >> "$ruta_archivo"
                echo "Se agregó el contenido al archivo $archivo."
            else
                # Si el archivo no existe, crearlo con el contenido
                echo "$contenido" > "$ruta_archivo"
                echo "Se creó el archivo $archivo con el contenido inicial."
            fi
            
        ;;
        2)
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.5
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            echo -e "\e[31mEliminando ..\e[0m"
            sleep 0.2
            cd $HOME
            touch .hushlogin
            echo -e "\e[34mSe elimino El Banner\e[0m"
            
        ;;
        3)
            echo "Has seleccionado la Opción 3."
            
            archivo=".bashrc"
            ruta_archivo="$HOME/$archivo"
            
            iscript="python3 /data/data/com.termux/files/home/mi_script.py"
            if [ -f "$ruta_archivo" ]; then
                # Agregar el contenido al archivo Python
                echo "$iscript" >> "$ruta_archivo"
                echo "Se agregó el contenido al archivo $archivo."
            else
                # Si el archivo no existe, crearlo con el contenido
                echo "$iscript" > "$ruta_archivo"
                echo "Se creó el archivo $archivo con el contenido inicial. GAAAAAAAAAAA"
            fi
        ;;
        
        4)
            echo "Saliendo del programa."
            exit 0
        ;;
        *)
            echo "Opción no válida. Por favor, selecciona una opción válida."
        ;;
    esac
done