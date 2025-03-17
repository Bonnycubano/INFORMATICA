#!/bin/bash

# Genera un numero casuale tra 1 e 100
numero_segreto=$((RANDOM % 100 + 1))

# Inizializza il numero di tentativi
tentativi=0

echo "Benvenuto nel gioco 'Indovina il Numero Segreto'!"
echo "Ho scelto un numero tra 1 e 100. Prova a indovinarlo!"

# Loop finché l'utente non indovina
while true; do
    # Chiedi all'utente di inserire un numero
    echo -n "Inserisci il tuo tentativo: "
    read tentativo

    # Incrementa il numero di tentativi
    ((tentativi++))

    # Verifica se il tentativo è un numero valido
    if ! [[ "$tentativo" =~ ^[0-9]+$ ]]; then
        echo "Per favore, inserisci un numero valido."
        continue
    fi

    # Controlla se l'utente ha indovinato
    if [ "$tentativo" -eq "$numero_segreto" ]; then
        echo "Complimenti! Hai indovinato il numero in $tentativi tentativi."
        break
    elif [ "$tentativo" -gt "$numero_segreto" ]; then
        echo "Troppo alto! Riprova."
    else
        echo "Troppo basso! Riprova."
    fi
done

