#!/bin/bash

if [ $# -ne 3 ]; 
then
    echo "$0 operazione numero1 numero2"
    exit 1
fi

# Assegno alle variabili i diversi argomenti
operazione=$1
num1=$2
num2=$3

# Verifica che i numeri siano validi
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Devono essere numeri interi."
    exit 1
fi

# Esegui l'operazione in base al primo argomento
if [ "$operazione" = "addizione" ]; then
    echo "Il risultato dell'addizione è = $(( num1 + num2 ))"
elif [ "$operazione" = "sottrazione" ]; then
    echo "Il risultato della sottrazione è = $(( num1 - num2 ))"
elif [ "$operazione" = "moltiplicazione" ]; then
    echo "Il risultato del prodotto è = $(( num1 * num2 ))"
elif [ "$operazione" = "divisione" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Impossibile dividere un numero per zero."
        exit 2
    else
        echo "Il risultato della divisione è = $(( num1 / num2 ))"
    fi
else
    echo "Operazione non valida. Usa 'addizione', 'sottrazione', 'moltiplicazione' o 'divisione'."
    exit 3
fi








