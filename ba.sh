#!/bin/bash

sleep 0.5
echo "███████████   █████████                               "
sleep 0.5
echo " ░░███░░░░░███ ███░░░░░███                              "
sleep 0.5
echo " ░███    ░███░███    ░███ ████████    ██████  ████████  "
sleep 0.5
echo " ░██████████ ░███████████░░███░░███  ███░░███░░███░░███ "
sleep 0.5
echo " ░███░░░░░███░███░░░░░███ ░███ ░███ ░███████  ░███ ░░░ "
sleep 0.5
echo " ░███    ░███░███    ░███ ░███ ░███ ░███░░░   ░███     "
sleep 0.5
echo " ███████████ █████   █████████ █████░░██████  █████   " 
sleep 0.5
echo " ░░░░░░░░░░░ ░░░░░   ░░░░░░░░░ ░░░░░  ░░░░░░  ░░░░░  "   
sleep 0.5
echo "                                             "    
sleep 0.5
echo "           ███████████  ██████████          "           
sleep 0.5
echo "          ░░███░░░░░███░░███░░░░░█         "            
sleep 0.5
echo "           ░███    ░███ ░███  █ ░         "             
sleep 0.5
echo "  ██████████░██████████  ░██████         "               
sleep 0.5
echo "  ░░░░░░░░░░ ░███░░░░░░   ░███░░█       "                 
sleep 0.5
echo "           ░███         ░███ ░   █     "                
sleep 0.5
echo "           █████        ██████████    "                 
sleep 0.5
echo "          ░░░░░        ░░░░░░░░░░   "  
echo "Recueda !!!!:
    que al hacer esto Se reiniciara termux y perderas todos tus datos es fabirable hacer esto cuando recien te descargaste termux
        "                 
while true; do
    
    echo "Selecciona una opción:"
    echo "1. IG"
    echo "2. eliminar el baner por defecto de Termux"
    echo "3. Insertar una imagen como baner"
    echo "4. Salir"

    read opcion

    case $opcion in
        1)
            echo "Has seleccionado la Opción 1."
            # Coloca aquí el código para la Opción 1
            ;;
        2)
            echo "Has seleccionado la Opción 2."
            cd $HOME 
            touch .hushlogin
            ;;
        3)
            echo "Has seleccionado la Opción 3."
            # Coloca aquí el código para la Opción 3
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