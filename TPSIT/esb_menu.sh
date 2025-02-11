#!/bin/bash

echo "****menu****"
echo "-opzione 1"
echo "-opzione 2"
echo "-opzione 3"
echo "-opzione 4"
echo "-opzione 0"

echo "fai la tua scelta:"
read scelta

if [ $scelta -eq 1 ]; then
    echo "hai scelto l'opzione 1"
elif [ $scelta -eq 2 ]; then
    echo "hai scelto l'opzione 2"
elif [ $scelta -eq 3 ]; then
    echo "hai scelto l'opzione 3"
elif [ $scelta -eq 4 ]; then
    echo "hai scelto l'opzione 4"
elif [ $scelta -eq 0 ]; then
    echo "arrivederci"
fi