#!/bin/bash



nome=""
ora=""
minuti=""
echo "inserisci il nome"
read nome
echo "inserisci l'ora"
read ora
echo "inserisci i minuti"
read minuti
if [ ora -gt 12 ];
then
    if [ ora -gt 19 ];
    then
        echo "buonasera $nome! sono le $ora.$minuti."
    else
        echo "buongiorno $nome! sono le $ora.$minuti."
    fi
elif [ $ora -lt 12 ];
then   
     echo "buongiorno $nome! sono le $ora.$minuti."
fi
