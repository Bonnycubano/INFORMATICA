#!/bin/bash

somma=0  # Inizializzo la variabile somma
num=1    # Imposto num su un valore diverso da 0 per entrare nel ciclo
while [ $num -ne 0 ]; do
    echo "Inserisci un numero intero: "
    read num
    
    if [ $num -ne 0 ]; then  # Se il numero non è 0, sommo
        ((somma += num))
    fi
done

echo "La somma degli argomenti è: $somma"
