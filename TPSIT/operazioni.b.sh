#!/bin/bash

somma=0

# Verifica che almeno un parametro sia stato passato
if [ $# -eq 0 ]; then
    echo "Errore: nessun numero fornito."
    exit 1
fi

# Ciclo finché ci sono parametri
while [ $# -gt 0 ]; do
    num=$1  # Il primo parametro
    shift    # Sposta i parametri a sinistra, così $2 diventa $1, $3 diventa $2, ecc.

    # Verifica se il parametro è un numero intero valido
    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo "Errore: '$num' non è un numero intero valido."
        exit 1  # Esce dallo script con un codice di errore
    fi

    # Aggiungi il numero alla somma
    ((somma += num))
done

echo "La somma degli argomenti è: $somma"






