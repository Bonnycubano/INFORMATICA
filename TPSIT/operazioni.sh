#!/bin/bash

somma=0


if [ "$1" == "add" ]; then
    i=1
    
    while [ $i -le $# ]; do
        somma=$((somma + ${!i}))  
        i=$((i+1))                   
    done
    
    echo "Risultato della somma=$somma"
else
    echo "la somma degli argomenti e':  $somma"
fi

