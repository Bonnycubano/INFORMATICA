#!/bin/bash


#Assegno alle variabili i diversi argomenti
operazione=$1
num1=$2
num2=$3
# Verifica che i numerisiano validi
if | [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]] then
echo "devono essere numeri interi"
exit 1
fi

if ["$operazione" = "addizione" ] then
echo "Il risultato dell'addizione e' = $(( num1 + num2 ))"
elif ["$operazione" = "sottrazione" ] then
echo "Il risultato della sottrazione e' = $(( numl - num2 ))"

elif [ "Soperazione" = "moltiplicazione"] then
echo "Il risultato del prodotto e' = $(( num1 * num2 ))"
elif [ "Soperazione" = "divisione"] then
if[ "$num2" -eq 0 ] then
echo "Impossibile dividere un numero per zero"
exit 2
else
    echo "Il risultato dela divisione e' = $(( num1 / num2 ))"
fi







