#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Errore: devi fornire 3 argomenti. Usa il formato:"
    echo "$0 operazione numero1 numero2"
    return
fi

operazione=$1
numero1=$2
numero2=$3


if [ "$operazione" == "add" ]; then
    risultato=$((numero1 + numero2))  
    echo "Risultato della somma: $risultato"
elif [ "$operazione" == "subtract" ]; then
    risultato=$((numero1 - numero2))  
    echo "Risultato della sottrazione: $risultato"
elif [ "$operazione" == "multiply" ]; then
    risultato=$((numero1 * numero2))  
    echo "Risultato della moltiplicazione: $risultato"
elif [ "$operazione" == "divide" ]; then
    if [ $numero2 -eq 0 ]; then  
        echo "Errore: non è possibile dividere per zero!"
    else
        risultato=$((numero1 / numero2))  
        echo "Risultato della divisione: $risultato"
    fi
else
    echo "Operazione non valida. Usa addizzione, sottrazione, moltiplicazione, o divisione."
fi



