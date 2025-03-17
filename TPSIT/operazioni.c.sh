#!/bin/bash

# Genera un numero segreto casuale tra 1 e 100
num_seg=$((RANDOM % 100 + 1))

# Dichiariamo le variabili dei max_tentativi e i tentativi effettivi
max_tent=10
tentativi=0

# Ciclo che continua fino a quando i tentativi sono minori di max_tent
while [ $tentativi -lt $max_tent ] && [ $# -gt 0 ]; do
    # Incrementa il contatore dei tentativi
    ((tentativi++))

    # Ottieni il primo argomento (numero dell'utente)
    num=$1
    shift

    # Verifica se l'utente ha indovinato il numero
    if [ "$num" -eq "$num_seg" ]; then
        echo "Hai indovinato il numero in $tent tentativi!"
        exit 0
    fi

    # Verifica se il numero dell'utente è più piccolo o più grande
    if [ $num -lt $num_seg ]; then
        echo "troppo basso"
    else
        echo "troppo alto"
    fi

    # Verifica se sono stati raggiunti i tentativi massimi
    if [ $tentativi -ge $max_tent ]; then
        echo "Hai fatto troppi tentativi. Il numero segreto era $num_seg."
        exit 1
    fi
done



