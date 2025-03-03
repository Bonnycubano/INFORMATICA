#!/bin/bash

somma=0

 i=1
    
    while [ $i -le $# ]; do
        somma=$((somma + ${!i}))  
        i=$((i+1))                   
    done
    

    echo "la somma degli argomenti e':  $somma"


