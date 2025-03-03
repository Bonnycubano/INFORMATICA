#!/bin/bash

somma=0  
num=1    
while [ $num -ne 0 ]; do
    echo "Inserisci un numero intero: "
    read num
    
    if [ $num -ne 0 ]; then 
        ((somma += num))
    fi
done

echo "La somma degli argomenti è: $somma"
