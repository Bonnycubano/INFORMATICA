#!/bin/bash

# Controlla che l'argomento sia un numero positivo
if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -le 0 ]; then
    echo "Errore: inserisci un numero positivo come argomento."
    exit 1
fi

# Numero di righe del triangolo (passato come argomento)
n=$1
cont=$n

# Ciclo per stampare il triangolo rovesciato
while [ $cont -ge 1 ]; do
    j=1
    # Stampa gli asterischi per ogni riga
    while [ $j -le $cont ]; do
        echo -n "*"
        ((j++))
    done
    # Vai a capo dopo ogni riga
    echo
    ((cont--))
done
