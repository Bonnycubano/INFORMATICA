#!/bin/bash

operazione=$1
numero1=$2
numero2=$3

if [ "$operazione" == "addizione" ]; then
    risultato=$((numero1 + numero2))  
    echo "Risultato della somma: $risultato"
elif [ "$operazione" == "sottrazione" ]; then
    risultato=$((numero1 - numero2))  
    echo "Risultato della sottrazione: $risultato"
elif [ "$operazione" == "moltiplicazione" ]; then
    risultato=$((numero1 * numero2))  
    echo "Risultato della moltiplicazione: $risultato"
elif [ "$operazione" == "divisione" ]; then
    if [ $numero2 -eq 0 ]; then  
        echo "Errore: non è possibile dividere per zero!"
    else
        risultato=$((numero1 / numero2))  
        echo "Risultato della divisione: $risultato"
    fi
else
    echo "Operazione non valida. Usa addizione, sottrazione, moltiplicazione o divisione."
fi




