#!/bin/bash

echo "inserisci l'operazione"
read operazione
echo "inserisci un numero"
read numero1
echo "inserisci un altro numero"
read numero2
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
    echo "Operazione non valida. Usa addizzione, sottrazione, moltiplicazione, o divisione."
fi



